#!/bin/bash

# Array of project names and corresponding GitHub repository names
declare -A repos=(
  ["cosmic-idle"]="cosmic-idle"
  ["cosmic-reader"]="cosmic-reader"
  ["pop-gtk-theme"]="gtk-theme" 
  ["pop-icon-theme"]="icon-theme"  
  ["system76-fonts"]="fonts"
  ["system76-power"]="system76-power"
)

# Exit script on any error
set -e

# Root source directory (where this script is located)
ROOT_DIR="$(pwd)"

# Base GitHub URL
GITHUB_BASE_URL="https://github.com/pop-os"

# -------------------------------
# Main loop: clone repos, update SlackBuild, create tarballs
# -------------------------------
for PRGNAM in "${!repos[@]}"; do
  REPO_NAME=${repos[$PRGNAM]}
  CLONE_URL="$GITHUB_BASE_URL/$REPO_NAME.git"

  GITDIR=$(mktemp -dt "$PRGNAM.git.XXXXXX")
  git clone --depth 1 "$CLONE_URL" "$GITDIR" || { echo "Failed to clone $CLONE_URL"; exit 1; }

  cd "$GITDIR"
  VERSION=$(git log --date=format:%Y%m%d --pretty=format:%cd.%h -n1)
  _commit=$(git rev-parse HEAD)

  rm -rf .git
  find . -name .gitignore -print0 | xargs -0 rm -f

  cd "$ROOT_DIR"

  SLACKBUILD="$ROOT_DIR/$PRGNAM/$PRGNAM.SlackBuild"
  if [ -f "$SLACKBUILD" ]; then
    #sed -i "s|^wget -c .*|wget -c $GITHUB_BASE_URL/$REPO_NAME/archive/$_commit/$REPO_NAME-$_commit.tar.gz|" "$SLACKBUILD"
    sed -i "s|^wget -c .*|wget -c https://reddoglinux.ddns.net/linux/cosmic/tarballs/$REPO_NAME-$VERSION.tar.lz|" "$SLACKBUILD"
    sed -i "s/^VERSION=.*/VERSION=${VERSION}/" "$SLACKBUILD"
    sed -i "s/^_commit=.*/_commit=${VERSION}/" "$SLACKBUILD"
    echo "Updated $SLACKBUILD with the latest version and commit."
  else
    echo "SlackBuild script not found in $ROOT_DIR/$PRGNAM. Skipping update for $PRGNAM."
  fi

  mv "$GITDIR" "$PRGNAM-$VERSION"
  tar cvf --lzip "$PRGNAM-$VERSION.tar.lz" "$PRGNAM-$VERSION"
  rm -rf "$PRGNAM-$VERSION"
  mv "$PRGNAM-$VERSION.tar.lz" /opt/htdocs/linux/cosmic/tarballs/
done

# -------------------------------
# Cosmic Core Apps: use Git tags for VERSION
# -------------------------------
declare -A CORE_REPOS=(
  ["cosmic-applets"]="cosmic-applets"
  ["cosmic-applibrary"]="cosmic-applibrary"
  ["cosmic-bg"]="cosmic-bg"
  ["cosmic-comp"]="cosmic-comp"
  ["cosmic-files"]="cosmic-files"
  ["cosmic-icons"]="cosmic-icons"
  ["cosmic-launcher"]="cosmic-launcher"
  ["cosmic-notifications"]="cosmic-notifications"
  ["cosmic-osd"]="cosmic-osd"
  ["cosmic-panel"]="cosmic-panel"
  ["cosmic-player"]="cosmic-player"
  ["cosmic-randr"]="cosmic-randr"
  ["cosmic-screenshot"]="cosmic-screenshot"
  ["cosmic-session"]="cosmic-session"
  ["cosmic-settings-daemon"]="cosmic-settings-daemon"
  ["cosmic-settings"]="cosmic-settings"
  ["cosmic-term"]="cosmic-term"
  ["cosmic-store"]="cosmic-store"
  ["cosmic-workspaces-epoch"]="cosmic-workspaces-epoch"
  ["launcher"]="launcher"
  ["xdg-desktop-portal-cosmic"]="xdg-desktop-portal-cosmic"

)

for PRGNAM in "${!CORE_REPOS[@]}"; do
  REPO_NAME=${CORE_REPOS[$PRGNAM]}
  GITDIR=$(mktemp -dt "$PRGNAM.git.XXXXXX")

  git clone --depth 1 "https://github.com/pop-os/$REPO_NAME.git" "$GITDIR"
  cd "$GITDIR"

  git fetch --tags

  # Try to get the latest tag
  VERSION=$(git describe --tags $(git rev-list --tags --max-count=1) 2>/dev/null || true)

  if [ -z "$VERSION" ]; then
      # No tags found — use date + short commit hash instead
      VERSION=$(git log --date=format:%Y%m%d --pretty=format:%cd.%h -n1)
        _commit=$(git rev-parse HEAD)
  else
      # Strip leading 'epoch-' if present
      VERSION=${VERSION#epoch-}
      VERSION=$(echo "$VERSION" | sed 's/-/./g')
  fi

  rm -rf .git
  find . -name .gitignore -print0 | xargs -0 rm -f

  cd "$ROOT_DIR"

  SLACKBUILD="$ROOT_DIR/$PRGNAM/$PRGNAM.SlackBuild"
  if [ -f "$SLACKBUILD" ]; then
    sed -i "s|^wget -c .*|wget -c https://reddoglinux.ddns.net/linux/cosmic/tarballs/$PRGNAM-$VERSION.tar.lz|" "$SLACKBUILD"
    sed -i "s/^VERSION=.*/VERSION=${VERSION}/" "$SLACKBUILD"
    sed -i "s/^_commit=.*/_commit=${VERSION}/" "$SLACKBUILD"
    echo "Updated $SLACKBUILD with latest tag $VERSION"
  else
    echo "SlackBuild script not found for $PRGNAM. Skipping."
  fi

  mv "$GITDIR" "$PRGNAM-$VERSION"
  tar cvf --lzip "$PRGNAM-$VERSION.tar.lz" "$PRGNAM-$VERSION"
  rm -rf "$PRGNAM-$VERSION"
  mv "$PRGNAM-$VERSION.tar.lz" /opt/htdocs/linux/cosmic/tarballs/
done

echo "All projects have been processed and archives created."


# Handling the 'just' repository separately
JUST_REPO="https://github.com/casey/just.git"
JUST_REPO_NAME="just"
JUST_DIR=$(mktemp -dt "$JUST_REPO_NAME.git.XXXXXX")
git clone --depth 1 "$JUST_REPO" "$JUST_DIR"

cd "$JUST_DIR"
git fetch --tags
VERSION=$(git describe --tags $(git rev-list --tags --max-count=1))  # Get the latest tag for version
#TARBALL_URL="https://github.com/casey/just/archive/$VERSION/just-$VERSION.tar.gz"
TARBALL_URL="https://reddoglinux.ddns.net/linux/cosmic/tarballs/just-$VERSION.tar.lz"

# Remove .git directory and .gitignore files
rm -rf .git
find . -name .gitignore -print0 | xargs -0 rm -f

cd "$ROOT_DIR"

# Update the SlackBuild script in the project directory for 'just'
SLACKBUILD="$ROOT_DIR/$JUST_REPO_NAME/$JUST_REPO_NAME.SlackBuild"
if [ -f "$SLACKBUILD" ]; then
  # Update the wget line
  sed -i "s|^wget -c .*|wget -c $TARBALL_URL|" "$SLACKBUILD"

  # Update the VERSION line with no fallback
  sed -i "s|^VERSION=.*|VERSION=$VERSION|" "$SLACKBUILD"

  echo "Updated $SLACKBUILD with the latest version and commit."
else
  echo "SlackBuild script not found in $ROOT_DIR/$JUST_REPO_NAME. Skipping update for $JUST_REPO_NAME."
fi

# Create a tarball
mv "$JUST_DIR" "$JUST_REPO_NAME-$VERSION"
tar cvf --lzip "$JUST_REPO_NAME-$VERSION.tar.lz" "$JUST_REPO_NAME-$VERSION"
rm -rf "$JUST_REPO_NAME-$VERSION"
mv $JUST_REPO_NAME-$VERSION.tar.lz /opt/htdocs/linux/cosmic/tarballs/

echo "The 'just' repository has been processed, archived as $JUST_REPO_NAME-$VERSION.tar.xz, and cleaned up."

# -------------------------------
# Cosmic Extra Apps: Wallpapers, Edit, Greeter
# -------------------------------
declare -A EXTRA_REPOS=(
  ["cosmic-wallpapers"]="cosmic-wallpapers"
  ["cosmic-edit"]="cosmic-edit"
  ["cosmic-greeter"]="cosmic-greeter"
  ["cosmic-initial-setup"]="cosmic-initial-setup"

)

for PRGNAM in "${!EXTRA_REPOS[@]}"; do
  REPO_NAME=${EXTRA_REPOS[$PRGNAM]}
  GITDIR=$(mktemp -dt "$PRGNAM.git.XXXXXX")

  git clone --depth 1 "https://github.com/pop-os/$REPO_NAME.git" "$GITDIR"
  cd "$GITDIR"

  # Special handling for LFS repos (wallpapers, edit, greeter all use LFS)
  git lfs install
  git remote add network-origin "https://github.com/pop-os/$REPO_NAME"
  git lfs fetch --all
  git lfs pull
  git lfs checkout
  git lfs status || { echo "git-lfs encountered an error"; exit 1; }

  # Grab version info
  git fetch --tags
  VERSION=$(git describe --tags $(git rev-list --tags --max-count=1) 2>/dev/null || true)

  if [ -z "$VERSION" ]; then
    VERSION=$(git log --date=format:%Y%m%d --pretty=format:%cd.%h -n1)
    _commit=$(git rev-parse HEAD)
  else
    VERSION=${VERSION#epoch-}
    VERSION=$(echo "$VERSION" | sed 's/-/./g; s/\.\././g')
  fi

  # Clean up Git metadata
  rm -rf .git
  find . -name .gitignore -print0 | xargs -0 rm -f

  cd "$ROOT_DIR"

  SLACKBUILD="$ROOT_DIR/$PRGNAM/$PRGNAM.SlackBuild"
  if [ -f "$SLACKBUILD" ]; then
    sed -i "s|^wget -c .*|wget -c https://reddoglinux.ddns.net/linux/cosmic/tarballs/$PRGNAM-$VERSION.tar.lz|" "$SLACKBUILD"
    sed -i "s|^VERSION=.*|VERSION=$VERSION|" "$SLACKBUILD"
    sed -i "s|^_commit=.*|_commit=$VERSION|" "$SLACKBUILD"
    echo "Updated $SLACKBUILD with latest tag $VERSION ($_commit)"
  else
    echo "SlackBuild script not found for $PRGNAM. Skipping."
  fi

  mv "$GITDIR" "$PRGNAM-$VERSION"
  tar cvf --lzip "$PRGNAM-$VERSION.tar.lz" "$PRGNAM-$VERSION"
  rm -rf "$PRGNAM-$VERSION"
  mv "$PRGNAM-$VERSION.tar.lz" /opt/htdocs/linux/cosmic/tarballs/
done

echo "Wallpapers, Edit, Greeter, and Initial Setup have been processed and archived."

echo "All projects have been processed and archives created."


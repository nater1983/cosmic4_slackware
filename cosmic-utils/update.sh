#!/bin/bash

# Array of project names and corresponding GitHub repository names
declare -A repos=(
  ["cosmic-calendar"]="calendar"
  ["cosmic-forecast"]="forecast"
  #["pop-gtk-theme"]="gtk-theme" 
  #["pop-icon-theme"]="icon-theme"  
  #["system76-fonts"]="fonts"
  #["system76-power"]="system76-power"
)

# Exit script on any error
set -e

# Root source directory (where this script is located)
ROOT_DIR="$(pwd)"

# Base GitHub URL
GITHUB_BASE_URL="https://github.com/cosmic-utils"

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
    sed -i "s|^wget -c .*|wget -c $GITHUB_BASE_URL/$REPO_NAME/archive/$_commit/$REPO_NAME-$_commit.tar.gz|" "$SLACKBUILD"
    #sed -i "s|^wget -c .*|wget -c https://reddoglinux.ddns.net/linux/cosmic/tarballs/$REPO_NAME-$VERSION.tar.xz|" "$SLACKBUILD"
    sed -i "s/^VERSION=.*/VERSION=${VERSION}/" "$SLACKBUILD"
    sed -i "s/^_commit=.*/_commit=${_commit}/" "$SLACKBUILD"
    echo "Updated $SLACKBUILD with the latest version and commit."
  else
    echo "SlackBuild script not found in $ROOT_DIR/$PRGNAM. Skipping update for $PRGNAM."
  fi

  mv "$GITDIR" "$PRGNAM-$VERSION"
  tar cvfJ "$PRGNAM-$VERSION.tar.xz" "$PRGNAM-$VERSION"
  rm -rf "$PRGNAM-$VERSION"
  #mv "$PRGNAM-$VERSION.tar.xz" /opt/htdocs/linux/cosmic/tarballs/
done

echo "All projects have been processed and archives created."


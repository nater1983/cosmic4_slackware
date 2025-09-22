#!/bin/bash
set -euo pipefail

# Log everything to /var/log/cosmic-build.log
LOGFILE="/var/log/cosmic-build.log"
exec > >(tee -a "$LOGFILE") 2>&1

echo "===== Building the Cosmic Desktop Environment on Slackware ====="

# Ensure required commands are available
for cmd in bash upgradepkg rm ls mkdir; do
    if ! command -v "$cmd" &>/dev/null; then
        echo "Error: $cmd is required but not installed."
        exit 1
    fi
done

# Ensure /var/cache/cosmic exists
mkdir -p /var/cache/cosmic

# Array of directories/packages to build
directories=(
  "just"
  "switcheroo-control"
  "seatd"
  "geoclue2"
  "fira-fonts"
  "cosmic-applets"
  "cosmic-applibrary"
  "cosmic-bg"
  "cosmic-comp"
  "cosmic-edit"
  "cosmic-files"
  "cosmic-greeter"
  "cosmic-icons"
  "pop-icon-theme"
  "cosmic-launcher"
  "cosmic-notifications"
  "cosmic-osd"
  "cosmic-panel"
  "cosmic-randr"
  "gumbo-parser"
  "jbig2dec"
  "leptonica"
  "cosmic-reader"
  "cosmic-screenshot"
  "cosmic-session"
  "cosmic-settings-daemon"
  "cosmic-settings"
  "cosmic-term"
  "cosmic-wallpapers"
  "cosmic-workspaces-epoch"
  "system76-fonts"
  "system76-power"
  "xdg-desktop-portal-cosmic"
  "sddm-sugar-candy"
)

total=${#directories[@]}  # total number of packages

# Build and install each package with loop counter
for i in "${!directories[@]}"; do
    dir="${directories[$i]}"
    count=$((i+1))
    
    echo "===== [$count/$total] Processing package: $dir ====="

    if [ ! -d "$dir" ]; then
        echo "Error: Directory $dir does not exist."
        exit 1
    fi

    cd "$dir"

    slackbuild_script="${dir}.SlackBuild"
    if [ ! -x "$slackbuild_script" ]; then
        echo "Error: SlackBuild script $slackbuild_script not found or not executable."
        exit 1
    fi

    # Find all packages in /var/cache/cosmic for this directory
    cached_packages=(/var/cache/cosmic/${dir}-*.t?z)
    if [ ${#cached_packages[@]} -gt 0 ]; then
        latest_package="${cached_packages[-1]}"
    else
        latest_package=""
    fi

    # Check if the package is already installed
    installed=$(ls /var/log/packages/${dir}-* 2>/dev/null || true)
    
    rebuild=false
    if [ -z "$installed" ]; then
        echo "Package $dir is not installed. Will build."
        rebuild=true
    elif [ -n "$latest_package" ]; then
        installed_name=$(basename "$installed")
        latest_name=$(basename "$latest_package")
        if [ "$installed_name" != "$latest_name" ]; then
            echo "A newer package exists in cache: $latest_name. Will rebuild."
            rebuild=true
        else
            echo "Package $dir already installed and up-to-date. Skipping."
        fi
    else
        echo "Package $dir installed, but no cached package exists. Will rebuild."
        rebuild=true
    fi

    if [ "$rebuild" = true ]; then
        echo "Running $slackbuild_script..."
        bash "$slackbuild_script"

        echo "Contents of /var/cache/cosmic/ after build:"
        ls -l /var/cache/cosmic/

        # Find newly created package
        package_file=(/var/cache/cosmic/${dir}-*.t?z)
        if [ ${#package_file[@]} -eq 0 ]; then
            echo "Error: No package file found for $dir after build."
            exit 1
        fi

        # Keep only the newest package
        sorted_packages=($(ls -1 /var/cache/cosmic/${dir}-*.t?z | sort))
        latest_pkg="${sorted_packages[-1]}"
        echo "Installing package: $latest_pkg"
        upgradepkg --reinstall --install-new "$latest_pkg"

        # Remove older packages to save space
        for old_pkg in "${sorted_packages[@]:0:${#sorted_packages[@]}-1}"; do
            echo "Removing old cached package: $old_pkg"
            rm -f "$old_pkg"
        done
    fi

    cd ..
done

echo "===== Cosmic Desktop Environment build and installation completed successfully ====="

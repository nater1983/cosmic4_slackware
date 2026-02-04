COSMIC Epoch 1.0.5

Here is a summary of the changes since the last tag. For full details, see epoch-1.0.4...epoch-1.0.5

    Translation updates and dependency updates for many projects
    cosmic-applets
        Add option to show battery percentage
    cosmic-app-library
        Update libcosmic, fixes #2452
    cosmic-edit
        Fix ligature support
    cosmic-files
        Only show open button if something can be opened
        Tab drag and drop
    cosmic-launcher
        Prefer SVG app icons
    cosmic-session
        Update values of existing env vars
    cosmic-settings
        Fix rotation frequency of wallpaper slideshow resetting, fixes pop-os/cosmic-settings#1692
        Improve network authentication reliability
        Fix features and add CI tests, improves portability
        Show a descriptive label instead of an empty dropdown if no default apps are available
        Ensure startup app delete dialog shows when triggered from search, fixes pop-os/cosmic-settings#1770
        Support user-defined XKB layouts, fixes pop-os/cosmic-settings#1553
    cosmic-store
        Performance improvements
        Support Ctrl+Q hotkey for exiting app
        Improve display of system and flatpak runtime updates
    cosmic-term
        Fix ligature support
    xdg-desktop-portal-cosmic
        Add hotkeys Ctrl+C to copy to clipboard and Ctrl+S to copy to Pictures


COSMIC Epoch 1.0.4

Here is a summary of the changes since the last tag. For full details, see epoch-1.0.3...epoch-1.0.4

    Translation updates and dependency updates for many projects
    cosmic-applets
        Add variant information, fixes pop-os/cosmic-applets#423
    cosmic-comp
        Fix visual artifacts in overview mode
        Fix super+click on a tiled window having unexpected behavior
    cosmic-edit
        Improve large file load time and memory usage, fixes pop-os/cosmic-edit#457
    cosmic-files
        Do not list hidden files in path completion
        Improve copy and extract performance, fixes pop-os/cosmic-files#1526
    cosmic-greeter
        Improvements for fingerprint login, fixes pop-os/cosmic-greeter#64
    cosmic-idle
        Use configurable system actions for suspend, to allow for alternatives to systemctl suspend
    cosmic-session
        Improved logic for setting SSH_AUTH_SOCK, fixes NixOS/nixpkgs#481984
    cosmic-settings
        Fail early if it is not possible to connect to secret service, fixes repeated failures
    cosmic-store
        Update appstream if more than one hour old, partially fixes pop-os/cosmic-store#335
        Wide set of performance improvements

COSMIC Epoch 1.0.3

Here is a summary of the changes since the last tag: epoch-1.0.2...epoch-1.0.3

    Translation updates to all projects
    cosmic-files
        Add open button to multiple preview
        Open multiple directories in separate tabs
        Handle hidden items during shift click
        Copy file times
    cosmic-notifications
        Clean up logging
    cosmic-player
        Mute when thumbnailing
    cosmic-settings
        Fallback to saving network password in system if secret agent channel is closed
        Option to apply RON theme files via the CLI
    cosmic-term
        Properly load and clear passwords in memory when passwords page is toggled
        Fixes for nix flake
    xdg-desktop-portal-cosmic
        Do not abort portal backend if dma-buf support is missing
        Set pipewire data flags for memfd, potentially fixes issues with OBS screen cast
        Only save config when rectangle drag ends

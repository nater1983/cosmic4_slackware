COSMIC Epoch 1.1.0

Here is a summary of the changes since the last tag. For full details, see epoch-1.0.16...epoch-1.1.0

    We will now be incrementing the minor version regularly in order to allow for mid-release patch versions if necessary
    cosmic-monitor is now part of releases. Pop will soon replace gnome-system-monitor with cosmic-monitor.
    Translation updates and dependency updates for many projects
    cosmic-applets
        sound applet: use cosmic-settings-daemon varlink API: pop-os/cosmic-applets#1352
        audio applet: adjust popup anchor based on window size: pop-os/cosmic-applets#1438
        Fix minimize animation stuttering: pop-os/cosmic-applets#1440
    cosmic-bg
        Enable recursive scanning for custom wallpaper directories: pop-os/cosmic-bg#115
    cosmic-comp
        Add tiling exceptions: pop-os/cosmic-comp#2458
        Fix panic when monitor is waking up: pop-os/cosmic-comp#2453
        Fix panic on pinning in debug build: pop-os/cosmic-comp#2366
        Fix "git commit unknown" in version string: pop-os/cosmic-comp#2463
        Allow naming pinned workspaces: pop-os/cosmic-comp#2427
        Optimize send_toplevel_to_client: pop-os/cosmic-comp#2439
        Fix panic when stacking: pop-os/cosmic-comp#2480
        Fix panic if window disappears during unminimize: pop-os/cosmic-comp#2337
        kms: skip lease resume when drm device activation fails: pop-os/cosmic-comp#2403
        Separate logind feature from systemd: pop-os/cosmic-comp#2476
        Implement pointer-warp-v1 wayland protocol: pop-os/cosmic-comp#2432
        Fix activation requests without active outputs: pop-os/cosmic-comp#2459
        Order sticky windows before fullscreen windows: pop-os/cosmic-comp#2461
        Prevent gradual slowdown in long-running sessions: pop-os/cosmic-comp#2485
    cosmic-edit
        Add application/x-zerosize mime association, which fixes opening empty files with no extension: pop-os/cosmic-edit#580
    cosmic-files
        Use sort icons instead of unicode arrows: pop-os/cosmic-files#1846
        Mime app handling improvements (see links for details): pop-os/cosmic-files#1850 and pop-os/cosmic-files#1857
        Clear hover highlights when navigating with keyboard: pop-os/cosmic-files#1866
        Add support for Page-Up and Page-Down: pop-os/cosmic-files#1864
    cosmic-icons
        Add more mimetype icons: pop-os/cosmic-icons#49
    cosmic-osd
        Use cosmic-settings-daemon varlink API: pop-os/cosmic-osd#198
        Fix OSD not showing up when input and output volumes match: pop-os/cosmic-osd#206
    cosmic-panel
        Return a fallback refresh rate instead of unwrapping: pop-os/cosmic-panel#617
        Use panel color override on creation: pop-os/cosmic-panel#621
        Ensure panel expands to the edge when using fractional scaling: pop-os/cosmic-panel#622
        Advertise modifiers: pop-os/cosmic-panel#625
        Fix overflow flicker: pop-os/cosmic-panel#623
    cosmic-settings
        Use cosmic-settings-daemon varlink API: pop-os/cosmic-settings#1972
        vpn: handle non-file URL on openvpn import: pop-os/cosmic-settings#2038
        default_apps: set text editor associations for application/x-zerosize: pop-os/cosmic-settings#2040
    cosmic-settings-daemon
        Add varlink API for handling audio with pipewire: pop-os/cosmic-settings-daemon#135
        Graceful restart with SIGHUP: pop-os/cosmic-settings-daemon#152
    cosmic-term
        Avoid re-reading system theme from disk on every menu bar render: pop-os/cosmic-term#846
    xdg-desktop-portal-cosmic
        Add CI for pull requests: pop-os/xdg-desktop-portal-cosmic#322 and pop-os/xdg-desktop-portal-cosmic#324
        Better output arrangement in screencast dialog: pop-os/xdg-desktop-portal-cosmic#321

COSMIC Epoch 1.0.16

Here is a summary of the changes since the last tag. For full details, see epoch-1.0.15...epoch-1.0.16

    Translation updates and dependency updates for many projects
    cosmic-app-library
        Fix icon size mismatch: pop-os/cosmic-app-library#379
    cosmic-comp
        Update to new calloop: pop-os/cosmic-comp#2160
        Fix xwayland windows with CSD shrinking on any event: pop-os/cosmic-comp#2441
        Fixes for cursor capture sessions: pop-os/cosmic-comp#2346
        Fix "git commit unknown" in version string: pop-os/cosmic-comp#2313
        Block on creation of zbus connection to avoid deadlock: pop-os/cosmic-comp#2451
        Fix multiple windows with focus border: pop-os/cosmic-comp#2422
    cosmic-files
        Hide no display apps in open with dialog: pop-os/cosmic-files#1835
        Sort other applications in open with dialog: pop-os/cosmic-files#1840
        Hide apps without declared mimetype support in open with dialog: pop-os/cosmic-files#1843
        Speed up app icons and take added association into account: pop-os/cosmic-files#1847
    cosmic-greeter
        Autofill SOURCE_DATE_EPOCH and SOURCE_GIT_HASH during vendoring: pop-os/cosmic-greeter#464
    cosmic-launcher
        Fix alt-tab issues: pop-os/cosmic-launcher#427
        Recreate dummy layer surface when closed to keep clipboard connected: pop-os/cosmic-launcher#431
    cosmic-panel
        Increase autohide smoothness: pop-os/cosmic-panel#612
    cosmic-player
        Fix seek direction handling and clamp forward seeking: pop-os/cosmic-player#283
        Fix frameskip playhead handling: pop-os/cosmic-player#285
    cosmic-settings
        Add passkey/pin display dialogs for bluetooth keyboard pairing: pop-os/cosmic-settings#2024
        Add OpenRC support for bluetooth service management: pop-os/cosmic-settings#1982
        Check if action is already found before adding it to the search results: pop-os/cosmic-settings#2030
    xdg-desktop-portal-cosmic
        Fix file picker issues with NVIDIA: pop-os/xdg-desktop-portal-cosmic#318

COSMIC Epoch 1.0.15

Here is a summary of the changes since the last tag. For full details, see epoch-1.0.14...epoch-1.0.15

    Translation updates and dependency updates for many projects
    libcosmic
        Fix keyboard shortcut matching with layout variants like Dvorak: pop-os/libcosmic#1298
    cosmic-applets
        Fix more missing tray icons like Dropbox: pop-os/cosmic-applets#1419
        Use underscores instead of dashes in network secret agent ID: pop-os/cosmic-applets#1424
        Fix bluetooth applet showing bluetooth is off when it is connected: pop-os/cosmic-applets#1420
        Fix battery applet panicking: pop-os/cosmic-applets#1422
        Skip unsaved connections in VPN list: pop-os/cosmic-applets#1413
    cosmic-comp
        Allow layout switching and brightness/volume control hotkeys under session lock: pop-os/cosmic-comp#2296
        Implement pointer constraints protocol, which fixes cursor issues with video games: pop-os/cosmic-comp#2357
        Support multiple fullscreen windows per workspace, which fixes steam big picture mode issues: pop-os/cosmic-comp#2399
        Follow the focus after alt-tab to another output: pop-os/cosmic-comp#2410
        Add config option for xdg activation (focus stealing) behavior: pop-os/cosmic-comp#2367
    cosmic-edit
        Fix item highlight in wayland context menu: pop-os/cosmic-edit#575
    cosmic-files
        Fix item highlight in wayland context menu: pop-os/cosmic-files#1824
        Improve mime app detection: pop-os/cosmic-files#1828
    cosmic-launcher
        Reuse loaded fonts in SVG renderer: pop-os/cosmic-launcher#430
    cosmic-osd
        Fix brightness OSD: pop-os/cosmic-osd#204
    cosmic-player
        Add playback speed configuration: pop-os/cosmic-player#279
    cosmic-screenshot
        Fix screenshot not saving to specified directory in interactive mode: pop-os/cosmic-screenshot#203
    cosmic-settings
        Wait for cosmic-settings-daemon to appear and send initial max brightness: pop-os/cosmic-settings#2013
        Fix missing and wrong app associations in default apps: pop-os/cosmic-settings#2015 and pop-os/cosmic-settings#2023
    cosmic-store
        Allow opening RPM files: pop-os/cosmic-store#548
    cosmic-term
        Option to open new windows in the current directory: pop-os/cosmic-term#825
        Fix item highlight in wayland context menu: pop-os/cosmic-term#832
        Support more named keys for keyboard shortcuts: pop-os/cosmic-term#823
        Fix scrolling in some programs: pop-os/cosmic-term#826
        Avoid unnecessary text shaping at start up: pop-os/cosmic-term#827
        Increase default scroll history to 100,000 lines: pop-os/cosmic-term#836
        Fix Ctrl+Shift+_ mapping: pop-os/cosmic-term#828

COSMIC Epoch 1.0.14

Here is a summary of the changes since the last tag. For full details, see epoch-1.0.13...epoch-1.0.14

    Translation updates and dependency updates for many projects
    libcosmic (applies to many programs)
        Key bind support for non-latin keyboard layouts
        Progress bar supports linear progress markers for volume OSD
        Fix missing icons in apps that source their icons from a custom icon theme path
        Fix crash on resizing window in X11 environment
        Double fork exit fix for cosmic-app-library to fix a potential hang
        Enable F16 shader only if the GPU reports support for it
        Applets now gracefully exit when the wayland pipe connection is dropped
    cosmic-applets
        Prevent zombie shell processes: pop-os/cosmic-applets#1407
        Integrate nmrs for VPN, airplane mode, and secret agent: pop-os/cosmic-applets#1392
        Fix missing icons in status area: pop-os/cosmic-applets#1409
    cosmic-app-library
        Reorder groups using drag and drop: pop-os/cosmic-app-library#369
        Fix context menu actions broken for apps inside groups: pop-os/cosmic-app-library#376
    cosmic-comp
        Restore window to where it was before dragging to snap: pop-os/cosmic-comp#2305
        Smooth mouse wheel zoom and respect natural scroll direction: pop-os/cosmic-comp#2381
        Try to re-open devices after resume on permission errors: pop-os/cosmic-comp#2353
        Fix fullscreen X11 games opening as floating/tiled windows: pop-os/cosmic-comp#2395
        Add cursor idle-hide timeout: pop-os/cosmic-comp#2393
    cosmic-files
        Do not overwrite military time config: pop-os/cosmic-files#1803
        Add text file preview: pop-os/cosmic-files#1675
        Fix 24 hour time format in file dialog: pop-os/cosmic-files#1812
    cosmic-osd
        Use progress markers for volume indicator: pop-os/cosmic-osd#203
    cosmic-panel
        Smithay update: pop-os/cosmic-panel#602
        Do not halve border radius: pop-os/cosmic-panel#598
    cosmic-settings
        Retry connection to settings daemon and allow requests for brightness values: pop-os/cosmic-settings#2004
        Sort VPN connections alphabetically: pop-os/cosmic-settings#1990
        Sort startup applications by name: pop-os/cosmic-settings#1999
        Match panel corner radius to design: pop-os/cosmic-settings#2002
    cosmic-settings-daemon
        Support external monitor brightness using DDC/CI: pop-os/cosmic-settings-daemon#147
    cosmic-store
        Add rpm-ostree backend: pop-os/cosmic-store#546
    cosmic-term
        Fix binding Page Up and Page Down keys: pop-os/cosmic-term#779
        IME support: pop-os/cosmic-term#753
    xdg-desktop-portal-cosmic
        Use oo7-portal as secret portal by default: pop-os/xdg-desktop-portal-cosmic#311
        Make the cursor show by default in screencast: pop-os/xdg-desktop-portal-cosmic#314

COSMIC Epoch 1.0.13

Here is a summary of the changes since the last tag. For full details, see epoch-1.0.12...epoch-1.0.13

    Translation updates and dependency updates for many projects
    cosmic-comp
        Fix IME popup positioning: pop-os/cosmic-comp#2320
        Fix resizing issues: pop-os/cosmic-comp#2107
    cosmic-files
        Add button to clear recents: pop-os/cosmic-files#1777
        Fix alternate icon theme issues: pop-os/cosmic-files#1793
    cosmic-initial-setup
        Fix blank languages page during setup on non-systemd systems: pop-os/cosmic-initial-setup#133
    cosmic-osd
        Fix polkit agent not using sockets: pop-os/cosmic-osd#193
        Ensure input is not blocked by OSD indicator: pop-os/cosmic-osd#199
    cosmic-player
        Add skip forward and backward playback controls: pop-os/cosmic-player#268
        Translate desktop and metainfo files with xdgen (which makes these translations possible in weblate): pop-os/cosmic-player#234
    cosmic-settings
        Remove misleading wifi search placeholder: pop-os/cosmic-settings#1991
    cosmic-workspaces-epoch
        Make title and preview always the same width: pop-os/cosmic-workspaces-epoch#306

COSMIC Epoch 1.0.12

Here is a summary of the changes since the last tag. For full details, see epoch-1.0.11...epoch-1.0.12

    The required rust toolchain has been updated to 1.93
    Translation updates and dependency updates for many projects
    cosmic-applets:
        Parse HTML markup for notifications applet: pop-os/cosmic-applets#1387
    cosmic-comp
        Update smithay, fixing drag and drop issues and more: pop-os/cosmic-comp#2318
        Wipe DPMS state on resume: pop-os/cosmic-comp#2310
    cosmic-edit
        Text box IME support: pop-os/cosmic-edit#539
    cosmic-files
        Use name for network locations: pop-os/cosmic-files#1776
        Improve desktop entry field code handling: pop-os/cosmic-files#1775
    cosmic-settings
        Follow symlinks when scanning wallpaper directories: pop-os/cosmic-settings#1960
        Fix panic when using openrc with openrc-settingsd: pop-os/cosmic-settings#1961
    cosmic-store
        Force cache update when check for updates is clicked: pop-os/cosmic-store#536
    cosmic-term
        Option to open new tabs in current directory: pop-os/cosmic-term#755
        Make resetting zoom only affect current tab: pop-os/cosmic-term#795

COSMIC Epoch 1.0.11

Here is a summary of the changes since the last tag. For full details, see epoch-1.0.10...epoch-1.0.11

    Translation updates and dependency updates for many projects
    cosmic-app-library
        Enable wgpu: pop-os/cosmic-app-library#359
        Support .ico and .xpm icons: pop-os/cosmic-app-library#361 and pop-os/cosmic-app-library#363
    cosmic-comp
        Set cloexec on session socket early: pop-os/cosmic-comp#2225
        Fix window shrinking after drag and drop: pop-os/cosmic-comp#2290
        Remove recursive calls to keyboard.input: pop-os/cosmic-comp#1931
        Firefox 150 fixes issues with compositors like cosmic-comp: https://bugzilla.mozilla.org/show_bug.cgi?id=2018866
    cosmic-files
        Fix MTP issues and various performance improvements: pop-os/cosmic-files#1742
        Select filename until the extension in rename and save dialog: pop-os/cosmic-files#1735
    cosmic-settings
        Add option to swap control with caps lock: pop-os/cosmic-settings#1938
        Add setting to toggle workspace wrapping: pop-os/cosmic-settings#1929
        Restart dock and panel when size slider is released instead of when it changes position: pop-os/cosmic-settings#1973
    cosmic-term
        Fix find panel close button not working: pop-os/cosmic-term#788
    xdg-desktop-portal-cosmic
        Update accent color when light and dark mode is switched: pop-os/xdg-desktop-portal-cosmic#299

COSMIC Epoch 1.0.10

Here is a summary of the changes since the last tag. For full details, see epoch-1.0.9...epoch-1.0.10

    Translation updates and dependency updates for many projects
    cosmic-applets
        Implement workspace and configured output filtering: pop-os/cosmic-applets#1236
    cosmic-app-library
        Fix sizing issues: pop-os/cosmic-app-library#356
    cosmic-comp
        Add setting to toggle workspace wrapping: pop-os/cosmic-comp#2215
    cosmic-edit
        Close application when last tab is closed: pop-os/cosmic-edit#547
        Fix regression when cutting text: pop-os/cosmic-edit#556
        Fix focus when project search is open: pop-os/cosmic-edit#557
    cosmic-files
        Add user-defined context menu actions: pop-os/cosmic-files#1728
        Fix tab titles being bold when not selected: pop-os/cosmic-files#1734
        Workaround delays in clipboard data availability: pop-os/cosmic-files#1711
        Repeat a key to cycle through items in type to select mode: pop-os/cosmic-files#1695
    cosmic-greeter
        Fix input widget clipping: pop-os/cosmic-greeter#437
    cosmic-session
        Set XDG_SESSION_DESKTOP environmental variable: pop-os/cosmic-session#202
    cosmic-store
        Concurrently fetch backends: pop-os/cosmic-store#519
    cosmic-term
        Convert context menu to wayland popup surface: pop-os/cosmic-term#764
        Fix clippy warnings: pop-os/cosmic-term#782

COSMIC Epoch 1.0.9

Here is a summary of the changes since the last tag. For full details, see epoch-1.0.8...epoch-1.0.9

    iced has been updated to a new upstream version, which brings performance improvements and additional features such as improved animation and input method support
    Translation updates and dependency updates for many projects
    cosmic-applets
        Use text ellipsizing: pop-os/cosmic-applets#1323
        Install xdgen .desktop files for improved translation support: pop-os/cosmic-applets#1350
        app-list: Add middle mouse support to close toplevel applications: pop-os/cosmic-applets#1318
        status-area: Eliminate possible panic: pop-os/cosmic-applets#1358
        Display battery applet when there is no battery: pop-os/cosmic-applets#1370
        Remove known networks from visible wireless networks section: pop-os/cosmic-applets#1355
    cosmic-app-library
        Add spacer to ensure scrollable area is consistent: pop-os/cosmic-app-library#352
    cosmic-bg
        Increase memory limit for image decoding: pop-os/cosmic-bg#130
    cosmic-comp
        Add --no-xwayland argument for running without Xwayland: pop-os/cosmic-comp#2171
        Bind XF86LaunchA to workspace overview: pop-os/cosmic-comp#2175
        x11: stop remapping minimized windows on restore: pop-os/cosmic-comp#2147
        x11: fix fractional scaling: pop-os/cosmic-comp#2182
        image-copy: Store offscreen buffer for shm capture in session: pop-os/cosmic-comp#2185
        Fix clippy lints: pop-os/cosmic-comp#2212
        image-copy: Eliminate potential panic: pop-os/cosmic-comp#2190
        dbus: Eliminate potential panic: pop-os/cosmic-comp#2208
        Preserve fullscreen state when moving window between workspaces: pop-os/cosmic-comp#2135
        layout/floating: allow size altering if window was maximized: pop-os/cosmic-comp#2038
        Use WeakCosmicSurface for image-copy-capture source data: pop-os/cosmic-comp#2207
        Clean up pending_windows for surfaces that were never mapped: pop-os/cosmic-comp#2247
    cosmic-edit
        Hide the scrollbar when it is not needed: pop-os/cosmic-edit#520
        Fix recent menu clipping: pop-os/cosmic-edit#524
    cosmic-files
        Exclude trash from multi-preview: pop-os/cosmic-files#1558
        Fix mimetype based filtering in dialog: pop-os/cosmic-files#1650
        Make new windows open at the location of the currently active tab: pop-os/cosmic-files#1627
        Implement search in Recents and Trash: pop-os/cosmic-files#1628
        Preserve modified time when creating/extracting zip files: pop-os/cosmic-files#1662
        Add open item location to search: pop-os/cosmic-files#1699
        Do not read files if clipboard list empty: pop-os/cosmic-files#1710
        Respect show_recents config in dialog: pop-os/cosmic-files#1708
        Add setting open-with and permissions for multiple selected items: pop-os/cosmic-files#1520
        Fix focusing of replace button in replace dialog: pop-os/cosmic-files#1730
    cosmic-greeter
        Security hardening: pop-os/cosmic-greeter#426
            Distributions were notified of this change as it happened so they could provide patches outside of release tags
        Fix last selected user state: pop-os/cosmic-greeter#434
    cosmic-icons
        Add new action icons: pop-os/cosmic-icons#41
    cosmic-launcher
        Create dummy surface for clipboard: pop-os/cosmic-launcher#414
        Ellipsize name and description: pop-os/cosmic-launcher#413
    cosmic-notifications
        Parse html markup to rich text: pop-os/cosmic-notifications#144
    cosmic-osd
        Focus cancel button after surface gains focus: pop-os/cosmic-osd#185
    cosmic-player
        Add repeat control: pop-os/cosmic-player#192
        Fix ignored repeat with folder: pop-os/cosmic-player#239
        Add A-B repeat and frame stepping key binds and menu entries: pop-os/cosmic-player#241
        Fix audio player interface issues: pop-os/cosmic-player#254
    cosmic-session
        Use mapfile to read environment variables: pop-os/cosmic-session#182
        start-cosmic: handle ANSI-C quoted strings returned by systemd: pop-os/cosmic-session#183
        Don't overwrite QT_QPA_PLATFORMTHEME, add old qt5ct compatibility: pop-os/cosmic-session#192
    cosmic-settings
        Generate desktop entries with xdgen: pop-os/cosmic-settings#1869
        bluetooth: Improve device list UX and transitions: pop-os/cosmic-settings#1898
        wifi: Add search functionality for filtering wifi networks: pop-os/cosmic-settings#1592
        Fix keyboard repeat delay and rate sliders: pop-os/cosmic-settings#1916
        bluetooth: separate connection state from pairing state: pop-os/cosmic-settings#1913
        bluetooth: call connect after pair for unpaired devices: pop-os/cosmic-settings#1920
        about: deduplicate OpenGL GPU name variants: pop-os/cosmic-settings#1906
        sound: allow text for left and right to take up more space: pop-os/cosmic-settings#1941
        appearance: sync UI state on theme import and reset: pop-os/cosmic-settings#1905
        Ellipsize text in a few places: pop-os/cosmic-settings#1943
    cosmic-settings-daemon
        Do not reset VS code config when unsetting theme configs: pop-os/cosmic-settings-daemon#133
        Generate QPalette for wider Qt compatibility: pop-os/cosmic-settings-daemon#136
        Allow modifier-less shortcut bindings for non-typing keys: pop-os/cosmic-settings-daemon#141
    cosmic-store
        Refactor main.rs into modules: pop-os/cosmic-store#491
        Add mouse back navigation: pop-os/cosmic-store#503
        Remove packagekit from default features: pop-os/cosmic-store#502
            Distributions must now compile cosmic-store with the packagekit feature if they want that backend included
        Use libcosmic to open applications with GPU and preferred terminal: pop-os/cosmic-store#521
    cosmic-term
        Fix "Copy link" lingering highlight bug: pop-os/cosmic-term#751
        Only send space to the focused pane: pop-os/cosmic-term#767
        Prevent crash when splits are resized too small: pop-os/cosmic-term#765
        Add the background color to the tab bar: pop-os/cosmic-term#766
        Fix one pixel gap between panes: pop-os/cosmic-term#768
    cosmic-workspaces-epoch
        Fix use of Vulkan: pop-os/cosmic-workspaces-epoch#292
        Add middle mouse support to close toplevel applications: pop-os/cosmic-workspaces-epoch#284
    xdg-desktop-portal-cosmic
        screenshot: Support XDG_SCREENSHOTS_DIR and Screenshots subfolder: pop-os/xdg-desktop-portal-cosmic#255
        settings: Add org.gnome.desktop.interface namespace with glob support: pop-os/xdg-desktop-portal-cosmic#280
        screencast: Handle stopped event from server: pop-os/xdg-desktop-portal-cosmic#291

COSMIC Epoch 1.0.8

Here is a summary of the changes since the last tag. For full details, see epoch-1.0.7...epoch-1.0.8

    Translation updates and dependency updates for many projects
    cosmic-applets
        Lazy load status notifier menu layouts to prevent D-bus timeouts - pop-os/cosmic-applets#1252
        Focus password input in Wi-Fi authentication dialog - pop-os/cosmic-applets#1320
    cosmic-app-library
        Add standalone mode for local development - pop-os/cosmic-app-library#341
        Fix cargo vendor --locked - pop-os/cosmic-app-library#345
    cosmic-bg
        Parallelize gradient generation - pop-os/cosmic-bg#121
    cosmic-comp
        Fix window state preservation - pop-os/cosmic-comp#2099
        Update dependencies - pop-os/cosmic-comp#2112
        Update smithay - pop-os/cosmic-comp#2119
    cosmic-files
        Add option to copy path when pressing shift - pop-os/cosmic-files#1370
        Gray out paste menu when clipboard is empty or location is not supported - pop-os/cosmic-files#1613
        Show count of files for Apply to all - pop-os/cosmic-files#1614
        Close context menus in various cases - pop-os/cosmic-files#1631
        Remove unsupported context menu options in Recents - pop-os/cosmic-files#1638
        Add Clear Recents history to Recents nav bar context menu - pop-os/cosmic-files#1639
        Ellipsize text - pop-os/cosmic-files#1640
        Disable wgpu feature in cosmic-files-applet - pop-os/cosmic-files#1644
    cosmic-player
        Unmute when changing volume - pop-os/cosmic-player#222
    cosmic-session
        Enable cutecosmic or qt6ct with QT_QPA_PLATFORMTHEME - pop-os/cosmic-session#186
    cosmic-settings
        Ensure disable shortcuts are re-added after replacement - pop-os/cosmic-settings#1846
        Use jiff instead of chrono where possible - pop-os/cosmic-settings#1859
        Deduplicate custom wallpaper entries - pop-os/cosmic-settings#1863
    cosmic-settings-daemon
        Support Qt theme generation with qt5ct & qt6ct - pop-os/cosmic-settings-daemon#128
    cosmic-store
        Do not auto refresh updates on nav - pop-os/cosmic-store#484
        Update flathub stats to January 2026 - pop-os/cosmic-store#492
    cosmic-term
        Add --working-diretory argument - pop-os/cosmic-term#662
        Activate nearest tab only if closing focused tab - pop-os/cosmic-term#731
        Add Copy link to context menu - pop-os/cosmic-term#733
        COSMIC Light theme update - pop-os/cosmic-term#740
        Increase menu width - pop-os/cosmic-term#743
    cosmic-workspaces-epoch
        Use ellipsis and update dependencies - pop-os/cosmic-workspaces-epoch#259

COSMIC Epoch 1.0.7

Here is a summary of the changes since the last tag. For full details, see epoch-1.0.6...epoch-1.0.7

    The workspaces overview now supports an action on typing. This can be configured to open the launcher or app library in cosmic-settings Desktop -> Workspaces -> Workspaces overview -> Action on typing.
    Add pull request template to all projects
    cosmic-edit, cosmic-files, cosmic-store, and cosmic-term will now generate their desktop and metainfo files using fluent, so they can be translated using weblate.
    Translation updates and dependency updates for many projects
    cosmic-applets
        Fix audio route changing when changing volume
        Focus cosmic-settings when an applet requests it
    cosmic-comp
        Fix panic when full-screening windows: pop-os/cosmic-comp#1792
        Remove redundant configure in popup reposition request: pop-os/cosmic-comp#1971
        Fix panic from tiling placeholders not being cleaned up: pop-os/cosmic-comp#2071
        Update smithay to fix image-copy memory leak
        Fix cursor follows focus when traversing monitors: #2233
        Fix keyboard shortcuts for non-Latin layouts: pop-os/cosmic-comp#642
    cosmic-files
        Respect Path desktop entry key: pop-os/cosmic-files#1530
        Clear the type to select buffer when changing location
        Add Move to and Copy to to the Edit menu
        Update compio-driver, fixes musl compilation
        Add setting to toggle the Recents feature: pop-os/cosmic-files#1591
    cosmic-settings
        Only consider active routes when setting volume and mute
        Show WPA3 only networks: pop-os/cosmic-settings#1590
        Only display Install additional languages if gnome-language-selector is available
        Fix reset to default not showing up after importing theme in Appearance page: pop-os/cosmic-settings#1781
        Set the language via AccountsService when reordering languages
        Fix automatic theme switching after suspend or time change: pop-os/cosmic-settings#1414
    cosmic-settings-daemon
        Fix automatic theme switching after suspend or time change: pop-os/cosmic-settings-daemon#19
    cosmic-store
        Cache explore results to disk for instant startup
    cosmic-term
        Tab drag and drop

COSMIC Epoch 1.0.6

Here is a summary of the changes since the last tag. For full details, see epoch-1.0.5...epoch-1.0.6

    Translation updates and dependency updates for many projects
    cosmic-applets
        status-area: Use seperate socket-activated daemon for StatusNotifierWatcher, and other fixes - pop-os/cosmic-panel#284
    cosmic-comp
        Update smithay to latest commit
        Improvements for damage tracking
        Expose wl_fixes protocol to clients
    cosmic-edit
        Tab drag and drop
    cosmic-files
        Fix enter key not extracting password-protected ZIP files - pop-os/cosmic-files#1542
        Move to and copy to context menu items
        Support pasting images, videos, and text from clipboard - pop-os/cosmic-files#248
        Disable save button when filename is empty - pop-os/cosmic-files#1576
        Fix display name for GVFS items
    cosmic-launcher
        Fix mime type icons not loading - pop-os/cosmic-launcher#327
    cosmic-notifications
        Support file:// URLs in app_icon field
    cosmic-player
        Play next file automatically
    cosmic-settings
        Reset input if shortcut replacement dialog is cancelled - pop-os/cosmic-settings#1411
    cosmic-term
        Configurable hotkeys - pop-os/cosmic-term#197
        Hide cursor when scrolled in unfocused terminal
    xdg-desktop-portal-cosmic
        Use fallback background from cosmic-wallpapers

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

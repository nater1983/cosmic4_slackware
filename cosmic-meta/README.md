COSMIC Epoch 1.9.0

COSMIC Viewer has been released. It is an image viewer that supports a wide range of formats and has a number of built-in editing features: https://github.com/pop-os/cosmic-viewer

COSMIC OSK has also been released. It is an on-screen keyboard that supports both touch and gamepad input: https://github.com/pop-os/cosmic-osk

COSMIC Store has received a design overhaul, mostly so we can highlight the developer of each app/applet.

Here is a summary of the changes since the last tag. For full details, see epoch-1.8.0...epoch-1.9.0

    Translation updates and dependency updates for many projects
    cosmic-applets
        Add on-screen keyboard applet, which allows for toggling the OSK on demand: pop-os/cosmic-applets#1564
        Fix panic on an audio sink or source being removed: pop-os/cosmic-applets#1567
    cosmic-app-library
        Fix pixelated icons: pop-os/cosmic-app-library#406
        Fix context menu in search box not working: pop-os/cosmic-app-library#408
    cosmic-bg
        Use cosmic-bg to show the background on the lock screen, with a new wayland protocol: pop-os/cosmic-bg#144
    cosmic-comp
        Allow layer shell programs like the background and on-screen keyboard to be shown on the lock screen: pop-os/cosmic-comp#2792
        Fix context menus in the app library and launcher: pop-os/cosmic-comp#2845
        Fix super key being stuck in some applications when launcher is opened: pop-os/cosmic-comp#2846
        Fix escape key not closing menus: pop-os/cosmic-comp#2859
        Fix maximized windows going back to original size when they gain focus: pop-os/cosmic-comp#2868
        Do not load shortcuts when running the login screen: pop-os/cosmic-comp#2879
    cosmic-edit
        Fix escape key not closing menus: pop-os/cosmic-edit#632
    cosmic-files
        Replace custom context menu code with libcosmic context menu: pop-os/cosmic-files#2052
        Fix the drag selection box not updating: pop-os/cosmic-files#2064
        Show icons for .exe files: pop-os/cosmic-files#2070
        Save the file dialog's sort setting: pop-os/cosmic-files#2039
        Fix context menu issues when shift is held: pop-os/cosmic-files#2071
        Fix escape key not closing menus: pop-os/cosmic-files#2078
    cosmic-greeter
        Use cosmic-bg to show background on lock screen: pop-os/cosmic-greeter#528
        Optional support for systemd-homed: pop-os/cosmic-greeter#456
        Button to toggle on-screen keyboard: pop-os/cosmic-greeter#545
    cosmic-launcher
        Fix pixelated icons: pop-os/cosmic-launcher#464
        Fix text input context menu not working: pop-os/cosmic-launcher#467
    cosmic-monitor
        Put dashboard graphs above top apps and processes in the small dashboard layout, and other maintenance: pop-os/cosmic-monitor#114
    cosmic-notifications
        Hide any currently visible notifications when do not disturb is enabled: pop-os/cosmic-notifications#177
    cosmic-panel
        Configurable border thickness: pop-os/cosmic-panel#679
        Fix wayland protocol error when applets create layer shell surfaces: pop-os/cosmic-panel#687
    cosmic-session
        Set COSMIC_VERSION variable: pop-os/cosmic-session#218
        Fix start-cosmic script when using nushell: pop-os/cosmic-session#226
        Depend on and auto-start cosmic-osk: pop-os/cosmic-session#227
        Fix compilation when autologin feature is used without systemd: pop-os/cosmic-session#223
        Recommend cosmic-viewer and set it as the default image viewer: pop-os/cosmic-session#230
    cosmic-settings
        Show COSMIC version in the about page: pop-os/cosmic-settings#2200
        Add on-screen keyboard settings: pop-os/cosmic-settings#2201
        Fix issues with WireGuard: pop-os/cosmic-settings#2212
        Add toggle for showing the day of the week: pop-os/cosmic-settings#2190
    cosmic-settings-daemon
        Sync font settings for GNOME applications: pop-os/cosmic-settings-daemon#194
    cosmic-store
        Add developer name to cards and other UI adjustments: pop-os/cosmic-store#609
    cosmic-term
        Fix escape key not closing menus: pop-os/cosmic-term#921

COSMIC Epoch 1.8.0

A large change to cosmic-comp has landed that improves touchscreen support. Further changes will be required for COSMIC applications. The on-screen keyboard, which is not yet included in releases, has seen a lot of work as well and will be released soon.

Here is a summary of the changes since the last tag. For full details, see epoch-1.7.0...epoch-1.8.0

    Translation updates and dependency updates for many projects
    cosmic-applets
        Fix microphone volume applying to speaker instead of microphone: pop-os/cosmic-applets#1533
        Show custom bluetooth device name: pop-os/cosmic-applets#1534
        Fix pixelated icons: pop-os/cosmic-applets#1546
    cosmic-app-library
        Center app names: pop-os/cosmic-app-library#400
        Fix some packaging issues: pop-os/cosmic-app-library#399 and pop-os/cosmic-app-library#401
    cosmic-comp
        Update Smithay, which improves mouse capture: pop-os/cosmic-comp#2759
        Allow X11 windows to start minimized: pop-os/cosmic-comp#2656
        Fix screenshot tool crashing (due to corner radius issues): pop-os/cosmic-comp#2788 and pop-os/cosmic-comp#2816
        Configurable server side decorations: pop-os/cosmic-comp#2736
        Check all connectors for primary GPU, fixes issues with some hybrid GPU laptops: pop-os/cosmic-comp#2624
        Do not magnify cursor when it is grabbing a window: pop-os/cosmic-comp#2790
        Fix sluggish steam overlays by ensuring X11 windows keep getting frame callbacks: pop-os/cosmic-comp#2800
        Update EI modifiers when keyboard layout changes, ensures cosmic-osk shows the correct layout: pop-os/cosmic-comp#2815
        Support for grabs when using touch input, which vastly improves touchscreen support in COSMIC: pop-os/cosmic-comp#2725
        Align the corner radii order with the theme, see the screenshots for details: pop-os/cosmic-comp#2819
        Sort outputs by connector so output layout fallback is consistent: pop-os/cosmic-comp#2813
        Fix blur region not matching with app library window: pop-os/cosmic-comp#2822
    cosmic-files
        Fix drag select rectangle not redrawing: pop-os/cosmic-files#2019
        Switch to another tab only if the active tab is closed: pop-os/cosmic-files#1949
    cosmic-greeter
        Fix for multi-factor authentication: pop-os/cosmic-greeter#502
        Fix for compiling without logind feature: pop-os/cosmic-greeter#536
    cosmic-icons
        Update web-browser-symbolic and add printer-queue-symbolic icons: pop-os/cosmic-icons#53
    cosmic-launcher
        Fix some packaging issues: pop-os/cosmic-launcher#459 and pop-os/cosmic-launcher#462
    cosmic-osd
        Add on-screen display for keyboard layout changes: pop-os/cosmic-osd#220
    cosmic-panel
        Use the same border radius for the container and background: pop-os/cosmic-panel#678
    cosmic-player
        Fix playback of files with invalid framerates: pop-os/cosmic-player#294
    cosmic-settings
        Keep scroll position when searching and opening a submenu: pop-os/cosmic-settings#2172
        Fix display page not redrawing while dragging displays: pop-os/cosmic-settings#2180
        Support renaming bluetooth devices: pop-os/cosmic-settings#2160
    cosmic-settings-daemon
        Check every AC power input in order to determine if AC is connected: pop-os/cosmic-settings-daemon#187
        Fix external monitor brightness lagging: pop-os/cosmic-settings-daemon#184
    cosmic-workspaces-epoch
        Fix window disappearing if dragged and dropped on the same workspace: pop-os/cosmic-workspaces-epoch#322
    xdg-desktop-portal-cosmic
        Do not panic when low-level wayland error can be ignored: pop-os/xdg-desktop-portal-cosmic#349

COSMIC Epoch 1.7.0

Here is a summary of the changes since the last tag. For full details, see epoch-1.6.0...epoch-1.7.0

    Translation updates and dependency updates for many projects
    cosmic-comp
        Always turn on the screen when the computer is unlocked: pop-os/cosmic-comp#2744
        Magnify the cursor when it is shaken to make it easy to locate: pop-os/cosmic-comp#2610
        Zoom will increase more with each keypress: pop-os/cosmic-comp#2616
        Scalable cursors (they will not be blurry when size is increased): pop-os/cosmic-comp#2659
    cosmic-edit
        Only select another tab if the currently selected tab is closed: pop-os/cosmic-edit#603
        Do not allow clicking Cut and Copy menu buttons when no text is selected: pop-os/cosmic-edit#588
    cosmic-files
        Allow searching for applications in open with dialog: pop-os/cosmic-files#1943
        Allow navigating to a network location from any location: pop-os/cosmic-files#1984
        Fix application closing when modification time is invalid: pop-os/cosmic-files#1959
        Improve network filesystem browsing performance: pop-os/cosmic-files#1996
        Allow renaming sidebar favorites: pop-os/cosmic-files#1911
        Fix alignment of file names in grid view: pop-os/cosmic-files#2004
    cosmic-greeter
        Allow log-in to continue when a non-fatal error message is returned by PAM: pop-os/cosmic-greeter#512
    cosmic-panel
        Fix panel crashes: pop-os/cosmic-panel#665
    cosmic-session
        Make start-cosmic compatible with POSIX sh, removing bash dependency: pop-os/cosmic-session#215
    cosmic-settings
        Fix refresh rate reverting to default when monitors are moved: pop-os/cosmic-settings#2139
        Add option to magnify cursor when it is shaken: pop-os/cosmic-settings#2100
        Disable move up and move down menu buttons for first and last keyboard layouts: pop-os/cosmic-settings#2170
        Remove unimplemented menu items from input page: pop-os/cosmic-settings#2169
        Add back navigation on bluetooth page when there are multiple adapters: pop-os/cosmic-settings#2154
    cosmic-settings-daemon
        Fix low battery alert on systems without batteries: pop-os/cosmic-settings-daemon#186
    cosmic-store
        Do not scroll back button: pop-os/cosmic-store#588
    cosmic-wallpapers
        Add COSMIC logo and logo pattern wallpapers: pop-os/cosmic-wallpapers#12
    xdg-desktop-portal-cosmic
        Implement remote desktop portal, which allows things like Steam Input to control the keyboard and mouse: pop-os/xdg-desktop-portal-cosmic#317
        Fix occasional failure to copy screenshots to clipboard: pop-os/xdg-desktop-portal-cosmic#338

COSMIC Epoch 1.6.0

Here is a summary of the changes since the last tag. For full details, see epoch-1.5.0...epoch-1.6.0

    Translation updates and dependency updates for many projects
    cosmic-applets
        status-area: constrain menu icon-data to icon size: pop-os/cosmic-applets#1466
        audio: debounce volume updates by 128ms: pop-os/cosmic-applets#1482
    cosmic-comp
        Support wl-dmabuf-v6: pop-os/cosmic-comp#2513
        Take presentation feedback from fullscreen surfaces: pop-os/cosmic-comp#2683
        EI protocol support: pop-os/cosmic-comp#2442
    cosmic-edit
        Fewer redraws and context menu in input fields: pop-os/cosmic-edit#604
    cosmic-files
        Fix infinite dialogs with network mount failure: pop-os/cosmic-files#1956
        Add context menu to text fields and selectable text widget: pop-os/cosmic-files#1815
    cosmic-greeter
        Detect logind presence at runtime: pop-os/cosmic-greeter#492
        Ignore empty password: pop-os/cosmic-greeter#509 and pop-os/cosmic-greeter#515
        Enable JPEG-XL and AVIF: pop-os/cosmic-greeter#516
    cosmic-launcher
        Prevent launcher flickering and closing when Ctrl modifier is used: pop-os/cosmic-launcher#439
    cosmic-notifications
        Delay creation of popups until the parent size is available: pop-os/cosmic-notifications#168
    cosmic-settings
        search: don't unload active page during search: pop-os/cosmic-settings#2050
        sound: add app specific settings: pop-os/cosmic-settings#2138
    cosmic-settings-daemon
        Fix panic on -1 max brightness value: pop-os/cosmic-settings-daemon#177
        battery: watch AC plug events from line power device via upower: pop-os/cosmic-settings-daemon#180
        audio: make events backward compatible: pop-os/cosmic-settings-daemon#181
        audio: handle playback specific sound settings: pop-os/cosmic-settings-daemon#179
    cosmic-term
        Allow configuring terminal borders: pop-os/cosmic-term#888
        Round subpixel coordinates for glyph background rectangles: pop-os/cosmic-term#892
        Redraw when needed and context menu in input fields: pop-os/cosmic-term#896

COSMIC Epoch 1.5.0

Here is a summary of the changes since the last tag. For full details, see epoch-1.4.0...epoch-1.5.0

    Translation updates and dependency updates for many projects
    cosmic-bg
        Use EXIF orientation: pop-os/cosmic-bg#142
    cosmic-comp
        Fix SIGABRT when kiosk child exits, and ignore EPERM/EACCES error on DRM cleanup: pop-os/cosmic-comp#2382
        Workaround for Chromium apps breaking below 1.0 scaling: pop-os/cosmic-comp#2623
        Fix dbus deadlock in a11y keyboard monitor: pop-os/cosmic-comp#2622
        Ensure X window focus on unmap/map: pop-os/cosmic-comp#2620
        Don't panic when renderer creation fails after a GPU reset: pop-os/cosmic-comp#2487
        Clamp pointer edge after applying the output offset: pop-os/cosmic-comp#2657
        corner_radius: check LayerHookId for layer surfaces: pop-os/cosmic-comp#2654
    cosmic-greeter
        Use cosmic-keymap-unstable-v1 wayland protocol: pop-os/cosmic-greeter#498
    cosmic-initial-setup
        Fix list alignment: pop-os/cosmic-initial-setup#145
    cosmic-panel
        Fix frosted glass for applets on hotplugged external monitor: pop-os/cosmic-panel#646
        Fix flickering when using frosted glass when preserving style on window maximize: pop-os/cosmic-panel#640
        Close popups on all outputs before adding a new one: pop-os/cosmic-panel#652
        Fixes for touch input: pop-os/cosmic-panel#550
        Fix high CPU usage when screen is locked: pop-os/cosmic-panel#653
    cosmic-settings
        wallpaper: Increase wallpaper limit from 100 to 500: pop-os/cosmic-settings#1785
        wallpaper: use EXIF orientation: pop-os/cosmic-settings#2075
        wallpaper: Allow adding multiple images at once: pop-os/cosmic-settings#2078
        Slider widget handle improvements: pop-os/cosmic-settings#2107
        display: fix one pixel gap between outputs due to rounding error: pop-os/cosmic-settings#2117
        networking: stop storing the VPN username as a secret: pop-os/cosmic-settings#2116
    cosmic-settings-daemon
        brightness: drop cached DDC handles when idle, fixes hangs: pop-os/cosmic-settings-daemon#171
    cosmic-store
        Center text in places where container content is aligned to center: pop-os/cosmic-store#579
    cosmic-term
        Configurable terminal pane borders: pop-os/cosmic-term#778
    xdg-desktop-portal-cosmic
        screencast: support metadata cursor capture: pop-os/xdg-desktop-portal-cosmic#175

COSMIC Epoch 1.4.0

Here is a summary of the changes since the last tag. For full details, see epoch-1.3.0...epoch-1.4.0

    cosmic-sound-theme has been adding for packaging. The default sound theme will be switched to this as the old pop-os/gtk-theme repo containing the Pop sound theme has been deprecated
    Translation updates and dependency updates for many projects
    cosmic-applets
        network: re-register secret agent after NetworkManager restart: pop-os/cosmic-applets#1480
    cosmic-comp
        Remove attempts to force redraw: pop-os/cosmic-comp#2543
        Fix frozen/detached active window hint: pop-os/cosmic-comp#2572
        Fix input to cropped tiled windows: pop-os/cosmic-comp#2551
        Notify readines on non-systemd systems: pop-os/cosmic-comp#2547
        Fix kiosk command with command line options: pop-os/cosmic-comp#2545
        clippy fixes: pop-os/cosmic-comp#2575
        Migrate from unmaintained vector math library: pop-os/cosmic-comp#2589
        Fix feature gate for logind: pop-os/cosmic-comp#2582
        Fix flicker when switching between menus in tiled libcosmic apps: pop-os/cosmic-comp#2585
        Fix some games not entering fullscreen: pop-os/cosmic-comp#2534
        Improve screen edge pointer accuracy with fractional scaling: pop-os/cosmic-comp#2568
        Various cursor image-copy fixes: pop-os/cosmic-comp#2571
        Release active popup grabs on toplevel destruction: pop-os/cosmic-comp#2584
        Fix border width discrepancy when using fractional scaling: pop-os/cosmic-comp#2570
    cosmic-files
        Fall back to GIO on destination open failure for MTP copies: pop-os/cosmic-files#1923
        Fix trash directory detection: pop-os/cosmic-files#1933
    cosmic-launcher
        Reset the results list when the search query changes: pop-os/cosmic-launcher#447
    cosmic-monitor
        Implement application quit and force quit: pop-os/cosmic-monitor#78
        Allow switching CPU and GPU graph types, design updates, and collect GPU frequency: pop-os/cosmic-monitor#80
    cosmic-panel
        Fix crash by setting a minimum size for anchor rect: pop-os/cosmic-panel#641
        Fix crash when changing output scale: pop-os/cosmic-panel#649
    cosmic-settings
        Preserve content when rebuilding appearance drawer: pop-os/cosmic-settings#2081
        Fix source volume changes accidentally applying to sink: pop-os/cosmic-settings#2098
    cosmic-settings-daemon
        Volume step configuration: pop-os/cosmic-settings-daemon#169
    cosmic-workspaces
        Clean up blur rectangles when a toplevel is closed: pop-os/cosmic-workspaces-epoch#323
    xdg-desktop-portal-cosmic
        Run as system service, log with tracing/journald, and terminate if wayland thread crashes: pop-os/xdg-desktop-portal-cosmic#337

COSMIC Epoch 1.3.0

Here is a summary of the changes since the last tag. For full details, see epoch-1.2.0...epoch-1.3.0

    Frosted glass is now supported, involving months of work throughout the COSMIC desktop. Open COSMIC Settings, navigate to the Desktop page in the sidebar, then the Appearance page, and finally click on Frosted glass in the Style section to adjust settings. App and applet developers must update their libcosmic versions in order to support frosted glass.
    Translation updates and dependency updates for many projects
    cosmic-applets
        status-area: forward mouse scroll events to StatusNotifierItems: pop-os/cosmic-applets#1431
        bluetooth: show known devices: pop-os/cosmic-applets#1459
        network: migrate from NetworkManager to nmrs: pop-os/cosmic-applets#1453
        input-sources: use cosmic-keymap-unstable-v1 wayland protocol: pop-os/cosmic-applets#1441
    cosmic-bg
        Switch to libdav1d for avif support in image crate: pop-os/cosmic-bg#141
    cosmic-comp
        Prevent rounding errors in magnifier: pop-os/cosmic-comp#2516
        Fix laptop screen stuck on vendor logo when external monitor connected: pop-os/cosmic-comp#2508
        Fix texture corruption with multiple GPUs: pop-os/cosmic-comp#2504
        Add cosmic-keyboard-layout-unstable-v1 protocol: pop-os/cosmic-comp#660
        Restore fullscreen surface back to stack: pop-os/cosmic-comp#2489
        Fall back to legacy X11 names when loading pointer themes: pop-os/cosmic-comp#2527
        Correct magnifier focal point math: pop-os/cosmic-comp#2533
        Fix uninimized window at wrong size after animation ends: pop-os/cosmic-comp#2491
        Forward libinput axis relative direction to wayland clients, fixes some touchpad gestures: pop-os/cosmic-comp#2469
    cosmic-files
        Support MIME subclasses in dialog scanning: pop-os/cosmic-files#1669
        Fix crash when right clicking mounted path in nav bar: pop-os/cosmic-files#1919
    cosmic-monitor
        Allow NVIDIA GPU to suspend (and other GPU-related improvements): pop-os/cosmic-monitor#62 and pop-os/cosmic-monitor#71
        Calculate power usage for AMD/Intel GPUs, show GPU power and total VRAM in dashboard: pop-os/cosmic-monitor#75
        Collect GPU memory usage for Intel GPUs: pop-os/cosmic-monitor#76
    cosmic-panel
        Improve framepacing of embedded applet popups: pop-os/cosmic-panel#631
        Always hide option for panels: pop-os/cosmic-panel#627
        Option to preserve panel/dock style on window maximize: pop-os/cosmic-panel#601
    cosmic-settings
        Enable avif wallpaper support using libdav1d: pop-os/cosmic-settings#2051
        Throttle volume sliders by 128ms: pop-os/cosmic-settings#2063
        Fix reverting display orientation changes: pop-os/cosmic-settings#2065
        Replace custom NetworkManager backend with nmrs: pop-os/cosmic-settings#2068
    cosmic-settings-daemon
        Use cosmic-keymap-unstable-v1 wayland protocol: pop-os/cosmic-settings-daemon#153
        Unset incorrect flatpak override for QT_QPA_PLATFORMTHEME: pop-os/cosmic-settings-daemon#166
    cosmic-term
        Fix fractional mouse wheel scrolling: pop-os/cosmic-term#861
        Fix terminal losing focus when clicking the header bar: pop-os/cosmic-term#864
    pop-launcher
        Show discrete GPU as default within COSMIC context menu: pop-os/launcher#286
    xdg-desktop-portal-cosmic
        Avoid handling panics with an abort: pop-os/xdg-desktop-portal-cosmic#333

COSMIC Epoch 1.2.0

Here is a summary of the changes since the last tag. For full details, see epoch-1.1.0...epoch-1.2.0

    Translation updates and dependency updates for many projects
    cosmic-applets
        vpn: fix no longer prompting for password: pop-os/cosmic-applets#1445
        network: use libcosmic spinner when connecting: pop-os/cosmic-applets#1450
        bluetooth: use libcosmic spinner when connecting: pop-os/cosmic-applets#1451
        battery: show plug icon when there is no battery: pop-os/cosmic-applets#1432
    cosmic-bg
        Enable AVIF support: pop-os/cosmic-bg#140
    cosmic-comp
        Fix flicker when opening workspace overview: pop-os/cosmic-comp#2505
        Quirk for newer Intel GPUs: pop-os/cosmic-comp#2510
    cosmic-edit
        Fix missing characters when using rustconf: pop-os/cosmic-edit#581
        Save file to recents on save: pop-os/cosmic-edit#585
    cosmic-files
        Fix archive extraction crash: pop-os/cosmic-files#1869
        Add file checksums to properties panel: pop-os/cosmic-files#1534
        View folder's content in trash: pop-os/cosmic-files#1878
    cosmic-greeter
        Use libcosmic spinner for authentication: pop-os/cosmic-greeter#476
    cosmic-launcher
        Fix flickering when launcher opens: pop-os/cosmic-launcher#437
    cosmic-monitor
        Fix missing app icons: pop-os/cosmic-monitor#52
        Horizontal scrolling of applications and processes pages: pop-os/cosmic-monitor#51
    cosmic-settings
        Fix invalid mac addresses passing validation: pop-os/cosmic-settings#2044
        Make key names translatable: pop-os/cosmic-settings#2033
        Change naming of super key action from disable to none: pop-os/cosmic-settings#1974
    cosmic-settings-daemon
        Retry pipewire connection on connection failure: pop-os/cosmic-settings-daemon#159
    cosmic-store
        Add animated loading indicator to explore and category pages: pop-os/cosmic-store#482
    cosmic-term
        Report focus in and out events: pop-os/cosmic-term#854
        Report effective OSC 11 background: pop-os/cosmic-term#853
    xdg-desktop-portal-cosmic
        Important for distributors: migrate from make to just: pop-os/xdg-desktop-portal-cosmic#254
        Honor libexecdir override for binary install path: pop-os/xdg-desktop-portal-cosmic#328
        
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

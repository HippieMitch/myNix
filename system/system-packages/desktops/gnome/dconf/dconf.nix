# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "ca/desrt/dconf-editor" = {
      saved-pathbar-path = "/org/gnome/tweaks/";
      saved-view = "/org/gnome/tweaks/";
      show-warning = false;
      window-height = 500;
      window-is-maximized = false;
      window-width = 540;
    };

    "org/gnome/Extensions" = {
      window-height = 933;
      window-width = 1067;
    };

    "org/gnome/TextEditor" = {
      style-scheme = "Adwaita-dark";
      style-variant = "dark";
    };

    "org/gnome/calculator" = {
      accuracy = 9;
      angle-units = "degrees";
      base = 10;
      button-mode = "basic";
      number-format = "automatic";
      show-thousands = false;
      show-zeroes = false;
      source-currency = "";
      source-units = "degree";
      target-currency = "";
      target-units = "radian";
      window-maximized = false;
      window-size = mkTuple [ 360 503 ];
      word-size = 64;
    };

    "org/gnome/control-center" = {
      last-panel = "system";
      window-state = mkTuple [ 1332 1012 false ];
    };

    "org/gnome/desktop/a11y/applications" = {
      screen-reader-enabled = false;
    };

    "org/gnome/desktop/app-folders" = {
      folder-children = [ "Utilities" "YaST" "Pardus" ];
    };

    "org/gnome/desktop/app-folders/folders/Pardus" = {
      categories = [ "X-Pardus-Apps" ];
      name = "X-Pardus-Apps.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/Utilities" = {
      apps = [ "gnome-abrt.desktop" "gnome-system-log.desktop" "nm-connection-editor.desktop" "org.gnome.baobab.desktop" "org.gnome.Connections.desktop" "org.gnome.DejaDup.desktop" "org.gnome.Dictionary.desktop" "org.gnome.DiskUtility.desktop" "org.gnome.Evince.desktop" "org.gnome.FileRoller.desktop" "org.gnome.fonts.desktop" "org.gnome.Loupe.desktop" "org.gnome.seahorse.Application.desktop" "org.gnome.tweaks.desktop" "org.gnome.Usage.desktop" "vinagre.desktop" ];
      categories = [ "X-GNOME-Utilities" ];
      name = "X-GNOME-Utilities.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/YaST" = {
      categories = [ "X-SuSE-YaST" ];
      name = "suse-yast.directory";
      translate = true;
    };

    "org/gnome/desktop/background" = {
      picture-options = "zoom";
      picture-uri = "file:///home/sean/.config/background";
      picture-uri-dark = "file:///home/sean/.config/background";
    };

    "org/gnome/desktop/input-sources" = {
      sources = [ (mkTuple [ "xkb" "us" ]) ];
      xkb-options = [ "terminate:ctrl_alt_bksp" ];
    };

    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      cursor-size = 24;
      cursor-theme = "Adwaita";
      document-font-name = "Noto Sans 12";
      enable-animations = true;
      enable-hot-corners = false;
      font-antialiasing = "rgba";
      font-hinting = "slight";
      font-name = "Inter Variable 11";
      icon-theme = "Tela-ubuntu-dark";
      monospace-font-name = "JetBrainsMono Nerd Font Mono Semi-Bold 13";
      scaling-factor = mkUint32 1;
      show-battery-percentage = false;
      text-scaling-factor = 1.0;
      toolbar-style = "text";
      toolkit-accessibility = false;
    };

    "org/gnome/desktop/notifications" = {
      application-children = [ "thunderbird" "firefox" "gnome-power-panel" "org-gnome-settings" "org-gnome-nautilus" ];
    };

    "org/gnome/desktop/notifications/application/firefox" = {
      application-id = "firefox.desktop";
    };

    "org/gnome/desktop/notifications/application/gnome-power-panel" = {
      application-id = "gnome-power-panel.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-nautilus" = {
      application-id = "org.gnome.Nautilus.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-settings" = {
      application-id = "org.gnome.Settings.desktop";
    };

    "org/gnome/desktop/notifications/application/org-qbittorrent-qbittorrent" = {
      application-id = "org.qbittorrent.qBittorrent.desktop";
    };

    "org/gnome/desktop/notifications/application/thunderbird" = {
      application-id = "thunderbird.desktop";
    };

    "org/gnome/desktop/peripherals/keyboard" = {
      numlock-state = true;
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      disable-while-typing = false;
      tap-to-click = true;
      two-finger-scrolling-enabled = true;
    };

    "org/gnome/desktop/privacy" = {
      old-files-age = mkUint32 30;
      recent-files-max-age = -1;
    };

    "org/gnome/desktop/search-providers" = {
      disabled = [ "org.gnome.Software.desktop" ];
      sort-order = [ "org.gnome.Contacts.desktop" "org.gnome.Documents.desktop" "org.gnome.Nautilus.desktop" ];
    };

    "org/gnome/desktop/session" = {
      idle-delay = mkUint32 480;
    };

    "org/gnome/desktop/sound" = {
      theme-name = "ocean";
    };

    "org/gnome/desktop/wm/keybindings" = {
      close = [ "<Super>q" ];
    };

    "org/gnome/desktop/wm/preferences" = {
      button-layout = "appmenu:minimize,close";
      titlebar-font = "Ubuntu Bold 11";
    };

    "org/gnome/evolution-data-server" = {
      migrated = true;
    };

    "org/gnome/mutter" = {
      dynamic-workspaces = true;
      edge-tiling = true;
      experimental-features = [ "scale-monitor-framebuffer" ];
    };

    "org/gnome/nautilus/icon-view" = {
      default-zoom-level = "small-plus";
    };

    "org/gnome/nautilus/list-view" = {
      use-tree-view = true;
    };

    "org/gnome/nautilus/preferences" = {
      click-policy = "single";
      default-folder-viewer = "icon-view";
      migrated-gtk-settings = true;
      search-filter-time-type = "last_modified";
    };

    "org/gnome/nautilus/window-state" = {
      initial-size = mkTuple [ 1347 974 ];
    };

    "org/gnome/photos" = {
      window-maximized = false;
      window-position = [ 20 20 ];
      window-size = [ 890 568 ];
    };

    "org/gnome/portal/filechooser/kitty" = {
      last-folder-path = "/home/sean/Pictures/Wallpapers";
    };

    "org/gnome/settings-daemon/plugins/color" = {
      night-light-schedule-automatic = false;
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      custom-keybindings = [ "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/" ];
      home = [ "<Super>f" ];
      www = [ "<Super>b" ];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = "<Super>u";
      command = "kitty distrobox enter fedora";
      name = "Fedora";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1" = {
      binding = "<Super>t";
      command = "kitty";
      name = "Kitty";
    };

    "org/gnome/shell" = {
      disabled-extensions = [ "hibernate-status@dromi" ];
      enabled-extensions = [ "appindicatorsupport@rgcjonas.gmail.com" "clipboard-history@alexsaveau.dev" "caffeine@patapon.info" "dash-to-dock@micxgx.gmail.com" "grand-theft-focus@zalckos.github.com" "gsconnect@andyholmes.github.io" "pop-shell@system76.com" "Vitals@CoreCoding.com" ];
      favorite-apps = [ "org.gnome.Nautilus.desktop" "firefox.desktop" "thunderbird.desktop" "discord.desktop" "steam.desktop" "net.lutris.Lutris.desktop" "ardour8.desktop" "org.kde.krita.desktop" "com.obsproject.Studio.desktop" "pycharm-community.desktop" "codium.desktop" "virt-manager.desktop" ];
      welcome-dialog-last-shown-version = "45.5";
    };

    "org/gnome/shell/extensions/caffeine" = {
      indicator-position-max = 1;
      show-notifications = false;
    };

    "org/gnome/shell/extensions/dash-to-dock" = {
      apply-custom-theme = false;
      background-opacity = 0.8;
      click-action = "focus-minimize-or-appspread";
      custom-theme-shrink = true;
      dash-max-icon-size = 48;
      disable-overview-on-startup = true;
      dock-position = "BOTTOM";
      height-fraction = 0.9;
      hot-keys = false;
      preferred-monitor = -2;
      preferred-monitor-by-connector = "eDP-1";
      show-mounts = false;
      transparency-mode = "DYNAMIC";
    };

    "org/gnome/shell/extensions/gsconnect" = {
      enabled = false;
      id = "6d640243-4d67-4080-bd67-d6dec76f494d";
      name = "spaceghost";
    };

    "org/gnome/shell/extensions/pop-shell" = {
      tile-by-default = false;
    };

    "org/gnome/shell/extensions/vitals" = {
      hot-sensors = [ "_temperature_processor_0_" ];
    };

    "org/gnome/software" = {
      check-timestamp = mkInt64 1731263767;
      first-run = false;
    };

    "org/gnome/tweaks" = {
      show-extensions-notice = false;
    };

    "org/gtk/gtk4/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = false;
      sidebar-width = 206;
      sort-column = "name";
      sort-directories-first = true;
      sort-order = "ascending";
      type-format = "category";
      view-type = "list";
      window-size = mkTuple [ 1277 783 ];
    };

    "org/gtk/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = false;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 167;
      sort-column = "name";
      sort-directories-first = false;
      sort-order = "ascending";
      type-format = "category";
      window-position = mkTuple [ 26 23 ];
      window-size = mkTuple [ 1231 902 ];
    };

    "org/virt-manager/virt-manager" = {
      manager-window-height = 550;
      manager-window-width = 550;
    };

    "org/virt-manager/virt-manager/confirm" = {
      delete-storage = false;
      forcepoweroff = false;
    };

    "org/virt-manager/virt-manager/connections" = {
      autoconnect = [ "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" ];
      uris = [ "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" ];
    };

    "org/virt-manager/virt-manager/conns/qemu:system" = {
      window-size = mkTuple [ 800 600 ];
    };

    "org/virt-manager/virt-manager/details" = {
      show-toolbar = true;
    };

    "org/virt-manager/virt-manager/urls" = {
      isos = [ "/mnt/secondary/Downloads/Software/Linux Images/openmandriva.rome-24.07-plasma6.wayland.x86_64.iso" "/mnt/secondary/Downloads/Software/Linux Images/blendOS_35fda9f4.iso" ];
    };

    "org/virt-manager/virt-manager/vmlist-fields" = {
      disk-usage = false;
      network-traffic = false;
    };

    "org/virt-manager/virt-manager/vms/06e2e290ba704a14840cf08e42ceae26" = {
      autoconnect = 1;
      scaling = 1;
      vm-window-size = mkTuple [ 1805 1137 ];
    };

    "org/virt-manager/virt-manager/vms/2296bdf496cb4b19b263bef7cce7a5db" = {
      autoconnect = 1;
      scaling = 1;
      vm-window-size = mkTuple [ 1024 810 ];
    };

    "org/virt-manager/virt-manager/vms/d2caa7b8c65046c89f2d9de43ae3621d" = {
      autoconnect = 1;
      scaling = 1;
      vm-window-size = mkTuple [ 1805 1137 ];
    };

  };
}

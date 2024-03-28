# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "org/gnome/TextEditor" = {
      restore-session = false;
      style-scheme = "classic-dark";
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
      window-size = mkTuple [ 360 502 ];
      word-size = 64;
    };

    "org/gnome/control-center" = {
      last-panel = "info-overview";
      window-state = mkTuple [ 1021 887 false ];
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
      clock-format = "12h";
      clock-show-date = false;
      cursor-theme = "Qogir";
      document-font-name = "Open Sans 12";
      font-antialiasing = "grayscale";
      font-hinting = "slight";
      font-name = "Museo Sans 11";
      icon-theme = "Tela-nord";
      monospace-font-name = "SauceCodePro Nerd Font 13";
    };

    "org/gnome/desktop/notifications" = {
      application-children = [ "gnome-network-panel" "org-gnome-texteditor" "gnome-power-panel" ];
    };

    "org/gnome/desktop/notifications/application/gnome-network-panel" = {
      application-id = "gnome-network-panel.desktop";
    };

    "org/gnome/desktop/notifications/application/gnome-power-panel" = {
      application-id = "gnome-power-panel.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-texteditor" = {
      application-id = "org.gnome.TextEditor.desktop";
    };

    "org/gnome/desktop/peripherals/keyboard" = {
      numlock-state = true;
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      tap-to-click = true;
      two-finger-scrolling-enabled = true;
    };

    "org/gnome/desktop/wm/keybindings" = {
      close = [ "<Super>q" ];
    };

    "org/gnome/desktop/wm/preferences" = {
      titlebar-font = "Museo Sans Bold 11";
    };

    "org/gnome/evolution-data-server" = {
      migrated = true;
    };

    "org/gnome/gnome-system-monitor" = {
      current-tab = "processes";
      maximized = false;
      network-total-in-bits = false;
      show-dependencies = false;
      show-whose-processes = "all";
      window-state = mkTuple [ 1227 932 26 23 ];
    };

    "org/gnome/gnome-system-monitor/disktreenew" = {
      col-6-visible = true;
      col-6-width = 0;
    };

    "org/gnome/gnome-system-monitor/proctree" = {
      col-11-visible = true;
      col-11-width = 48;
    };

    "org/gnome/mutter" = {
      dynamic-workspaces = true;
      edge-tiling = true;
      experimental-features = [ "scale-monitor-framebuffer" ];
    };

    "org/gnome/nautilus/icon-view" = {
      default-zoom-level = "small-plus";
    };

    "org/gnome/nautilus/preferences" = {
      click-policy = "single";
      default-folder-viewer = "icon-view";
      migrated-gtk-settings = true;
      search-filter-time-type = "last_modified";
    };

    "org/gnome/nautilus/window-state" = {
      initial-size = mkTuple [ 1322 997 ];
    };

    "org/gnome/portal/filechooser/steam" = {
      last-folder-path = "/mnt/secondary/Games/Steam";
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      custom-keybindings = [ "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/" ];
      home = [ "<Super>f" ];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = "<Super>b";
      command = "firefox";
      name = "Firefox";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1" = {
      binding = "<Super>t";
      command = "kitty";
      name = "Terminal";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2" = {
      binding = "<Super>u";
      command = "kitty distrobox-enter arch";
      name = "Arch Container";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3" = {
      binding = "<Super>e";
      command = "gnome-text-editor";
      name = "Text Editor";
    };

    "org/gnome/shell" = {
      enabled-extensions = [ "appindicatorsupport@rgcjonas.gmail.com" "caffeine@patapon.info" "clipboard-history@alexsaveau.dev" "dash-to-dock@micxgx.gmail.com" "grand-theft-focus@zalckos.github.com" "gsconnect@andyholmes.github.io" "pop-shell@system76.com" "Vitals@CoreCoding.com" "hibernate-status@dromi" ];
      favorite-apps = [ "org.gnome.Nautilus.desktop" "firefox.desktop" "thunderbird.desktop" "discord.desktop" "element-desktop.desktop" "steam.desktop" "net.lutris.Lutris.desktop" "ardour8.desktop" "com.obsproject.Studio.desktop" "org.kde.krita.desktop" "pycharm-community.desktop" "codium.desktop" "virt-manager.desktop" ];
      welcome-dialog-last-shown-version = "45.5";
    };

    "org/gnome/shell/extensions/caffeine" = {
      indicator-position-max = 1;
    };

    "org/gnome/shell/extensions/clipboard-history" = {
      paste-on-selection = false;
      toggle-menu = [ "<Shift><Super>v" ];
    };

    "org/gnome/shell/extensions/dash-to-dock" = {
      apply-custom-theme = false;
      background-opacity = 0.5;
      click-action = "focus-minimize-or-previews";
      custom-background-color = false;
      custom-theme-shrink = true;
      dash-max-icon-size = 43;
      disable-overview-on-startup = true;
      dock-position = "BOTTOM";
      height-fraction = 0.9;
      hot-keys = false;
      preferred-monitor = -2;
      preferred-monitor-by-connector = "eDP-1";
      scroll-action = "cycle-windows";
      show-apps-at-top = true;
      show-mounts = false;
      transparency-mode = "DYNAMIC";
    };

    "org/gnome/shell/extensions/gsconnect" = {
      enabled = false;
      id = "5e0de846-6771-4879-ba62-8f3f6196dd65";
      name = "spaceghost";
    };

    "org/gnome/shell/extensions/pop-shell" = {
      tile-by-default = false;
    };

    "org/gnome/shell/extensions/vitals" = {
      hot-sensors = [ "__network-rx_max__" "_temperature_processor_0_" ];
    };

    "org/gnome/software" = {
      check-timestamp = mkInt64 1711639717;
      first-run = false;
    };

    "org/gnome/tweaks" = {
      show-extensions-notice = false;
    };

    "org/gtk/gtk4/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = false;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 282;
      sort-column = "name";
      sort-directories-first = true;
      sort-order = "ascending";
      type-format = "category";
      view-type = "list";
      window-size = mkTuple [ 920 862 ];
    };

    "org/gtk/settings/file-chooser" = {
      clock-format = "12h";
    };

    "org/virt-manager/virt-manager/connections" = {
      autoconnect = [ "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" ];
      uris = [ "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" ];
    };

  };
}

# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "ca/desrt/dconf-editor" = {
      saved-pathbar-path = "/org/gnome/mutter/";
      saved-view = "/org/gnome/mutter/";
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

    "org/gnome/control-center" = {
      last-panel = "privacy";
      window-state = mkTuple [ 1332 1012 false ];
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
      picture-uri = "file:///home/sean/.local/share/eog-wallpaper.png";
      picture-uri-dark = "file:///home/sean/.local/share/eog-wallpaper.png";
    };

    "org/gnome/desktop/input-sources" = {
      sources = [ (mkTuple [ "xkb" "us" ]) ];
      xkb-options = [ "terminate:ctrl_alt_bksp" ];
    };

    "org/gnome/desktop/interface" = {
      cursor-theme = "Qogir";
      document-font-name = "Noto Sans 12";
      enable-hot-corners = false;
      font-antialiasing = "rgba";
      font-hinting = "slight";
      font-name = "Ubuntu 11";
      icon-theme = "Tela-nord-light";
      monospace-font-name = "JetBrainsMono Nerd Font Medium 13";
      show-battery-percentage = false;
      toolkit-accessibility = false;
    };

    "org/gnome/desktop/notifications" = {
      application-children = [ "thunderbird" "firefox" ];
    };

    "org/gnome/desktop/notifications/application/firefox" = {
      application-id = "firefox.desktop";
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
      toggle-state = false;
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

    "org/gnome/shell/extensions/vitals" = {
      hot-sensors = [ "__temperature_avg__" ];
    };

    "org/gnome/software" = {
      check-timestamp = mkInt64 1714877873;
      first-run = false;
    };

    "org/gnome/tweaks" = {
      show-extensions-notice = false;
    };

    "org/gtk/gtk4/settings/file-chooser" = {
      show-hidden = false;
    };

    "org/virt-manager/virt-manager/connections" = {
      autoconnect = [ "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" ];
      uris = [ "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" ];
    };

  };
}

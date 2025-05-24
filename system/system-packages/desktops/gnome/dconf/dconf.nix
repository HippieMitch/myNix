# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "org/gnome/Extensions" = {
      window-maximized = true;
    };

    "org/gnome/control-center" = {
      last-panel = "keyboard";
      window-state = mkTuple [ 980 640 true ];
    };

    "org/gnome/desktop/app-folders" = {
      folder-children = [ "System" "Utilities" "YaST" "Pardus" ];
    };

    "org/gnome/desktop/app-folders/folders/Pardus" = {
      categories = [ "X-Pardus-Apps" ];
      name = "X-Pardus-Apps.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/System" = {
      apps = [ "org.gnome.baobab.desktop" "org.gnome.DiskUtility.desktop" "org.gnome.Logs.desktop" "org.gnome.tweaks.desktop" "org.gnome.SystemMonitor.desktop" ];
      name = "X-GNOME-Shell-System.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/Utilities" = {
      apps = [ "org.gnome.Connections.desktop" "org.gnome.Evince.desktop" "org.gnome.FileRoller.desktop" "org.gnome.font-viewer.desktop" "org.gnome.seahorse.Application.desktop" ];
      name = "X-GNOME-Shell-Utilities.directory";
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
      font-name = "Adwaita Sans 11";
      icon-theme = "Tela-nord-dark";
    };

    "org/gnome/desktop/notifications" = {
      application-children = [ "org-gnome-software" "org-kde-krita" ];
    };

    "org/gnome/desktop/notifications/application/org-gnome-software" = {
      application-id = "org.gnome.Software.desktop";
    };

    "org/gnome/desktop/notifications/application/org-kde-krita" = {
      application-id = "org.kde.krita.desktop";
    };

    "org/gnome/desktop/wm/keybindings" = {
      close = [ "<Super>q" ];
    };

    "org/gnome/evolution-data-server" = {
      migrated = true;
    };

    "org/gnome/gnome-system-monitor" = {
      maximized = false;
      show-dependencies = false;
      show-whose-processes = "user";
      window-height = 720;
      window-width = 800;
    };

    "org/gnome/gnome-system-monitor/proctree" = {
      col-26-visible = false;
      col-26-width = 0;
    };

    "org/gnome/mutter" = {
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
      initial-size = mkTuple [ 1311 959 ];
    };

    "org/gnome/settings-daemon/plugins/color" = {
      night-light-schedule-automatic = false;
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      custom-keybindings = [ "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/" ];
      home = [ "<Super>f" ];
      www = [ "<Super>b" ];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = "<Super>t";
      command = "alacritty";
      name = "Alacritty";
    };

    "org/gnome/shell" = {
      disabled-extensions = [ "pop-shell@system76.com" ];
      enabled-extensions = [ "appindicatorsupport@rgcjonas.gmail.com" "dash-to-dock@micxgx.gmail.com" "caffeine@patapon.info" "gsconnect@andyholmes.github.io" "Vitals@CoreCoding.com" ];
      welcome-dialog-last-shown-version = "48.1";
    };

    "org/gnome/shell/extensions/caffeine" = {
      indicator-position-max = 2;
    };

    "org/gnome/shell/extensions/gsconnect" = {
      name = "spaceghost";
    };

    "org/gnome/shell/extensions/vitals" = {
      hot-sensors = [ "__network-rx_max__" "_temperature_acpi_thermal zone_" ];
    };

    "org/gnome/software" = {
      check-timestamp = mkInt64 1748102729;
      first-run = false;
      update-notification-timestamp = mkInt64 1748102731;
    };

    "org/gnome/tweaks" = {
      show-extensions-notice = false;
    };

    "org/virt-manager/virt-manager/connections" = {
      autoconnect = [ "qemu:///system" "qemu:///system" ];
      uris = [ "qemu:///system" "qemu:///system" ];
    };

  };
}

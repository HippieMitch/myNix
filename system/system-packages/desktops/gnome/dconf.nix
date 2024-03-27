# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "org/gnome/control-center" = {
      last-panel = "default-apps";
      window-state = mkTuple [ 980 640 false ];
    };

    "org/gnome/desktop/background" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = "file:///home/sean/.config/background";
      picture-uri-dark = "file:///home/sean/.config/background";
      primary-color = "#000000000000";
      secondary-color = "#000000000000";
    };

    "org/gnome/desktop/interface" = {
      clock-format = "12h";
      clock-show-date = false;
      cursor-theme = "Qogir";
      document-font-name = "Open Sans 11";
      font-antialiasing = "grayscale";
      font-hinting = "slight";
      font-name = "Ubuntu 11";
      icon-theme = "Tela-nord";
      monospace-font-name = "SauceCodePro Nerd Font 13";
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      tap-to-click = true;
      two-finger-scrolling-enabled = true;
    };

    "org/gnome/desktop/screensaver" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = "file:///home/sean/.local/share/backgrounds/2024-03-26-20-03-14-wallhaven-rdxvk7.jpg";
      primary-color = "#000000000000";
      secondary-color = "#000000000000";
    };

    "org/gnome/desktop/wm/keybindings" = {
      close = [ "<Super>q" ];
    };

    "org/gnome/desktop/wm/preferences" = {
      titlebar-font = "Ubuntu Bold 11";
    };

    "org/gnome/mutter" = {
      dynamic-workspaces = true;
      edge-tiling = true;
    };

    "org/gnome/nautilus/icon-view" = {
      default-zoom-level = "small-plus";
    };

    "org/gnome/nautilus/preferences" = {
      default-folder-viewer = "icon-view";
      migrated-gtk-settings = true;
      search-filter-time-type = "last_modified";
    };

    "org/gnome/nautilus/window-state" = {
      initial-size = mkTuple [ 1336 960 ];
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      custom-keybindings = [ "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/" ];
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
      name = "Arch";
    };

    "org/gnome/shell" = {
      enabled-extensions = [ "appindicatorsupport@rgcjonas.gmail.com" "caffeine@patapon.info" "clipboard-history@alexsaveau.dev" "dash-to-dock@micxgx.gmail.com" "gsconnect@andyholmes.github.io" "pop-shell@system76.com" "Vitals@CoreCoding.com" "grand-theft-focus@zalckos.github.com" ];
      favorite-apps = [ "org.gnome.Nautilus.desktop" "firefox.desktop" "thunderbird.desktop" "element-desktop.desktop" "discord.desktop" "steam.desktop" "net.lutris.Lutris.desktop" "ardour8.desktop" "org.kde.krita.desktop" "com.obsproject.Studio.desktop" "pycharm-community.desktop" "codium.desktop" "virt-manager.desktop" ];
    };

    "org/gnome/shell/extensions/caffeine" = {
      indicator-position-max = 2;
    };

    "org/gnome/shell/extensions/clipboard-history" = {
      paste-on-selection = false;
      toggle-menu = [ "<Shift><Super>v" ];
    };

    "org/gnome/shell/extensions/dash-to-dock" = {
      apply-custom-theme = false;
      background-opacity = 0.7;
      click-action = "focus-minimize-or-appspread";
      custom-theme-shrink = true;
      dash-max-icon-size = 48;
      dock-position = "BOTTOM";
      height-fraction = 0.9;
      hot-keys = false;
      preferred-monitor = -2;
      preferred-monitor-by-connector = "eDP-1";
      transparency-mode = "FIXED";
    };

    "org/gnome/shell/extensions/gsconnect" = {
      id = "26eb3295-a2c9-43a8-bf61-93eed25aa3fe";
      name = "spaceghost";
    };

    "org/gnome/shell/extensions/vitals" = {
      hot-sensors = [ "__temperature_avg__" ];
    };

    "org/gnome/tweaks" = {
      show-extensions-notice = false;
    };

    "org/gtk/settings/file-chooser" = {
      clock-format = "12h";
    };

    "org/virt-manager/virt-manager/connections" = {
      autoconnect = [ "qemu:///system" "qemu:///system" ];
      uris = [ "qemu:///system" "qemu:///system" ];
    };

  };
}

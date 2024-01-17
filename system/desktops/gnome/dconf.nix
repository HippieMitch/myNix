# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "ca/desrt/dconf-editor" = {
      saved-pathbar-path = "plank";
      saved-view = "/";
      show-warning = false;
      window-height = 500;
      window-is-maximized = false;
      window-width = 540;
    };

    "com/raggesilver/BlackBox" = {
      font = "Hack Nerd Font Mono 13";
      opacity = mkUint32 90;
      remember-window-size = true;
      style-preference = mkUint32 2;
      window-height = mkUint32 999;
      window-width = mkUint32 1221;
    };

    "info/febvre/Komikku" = {
      downloader-state = true;
      selected-category = 0;
      window-maximized-state = true;
      window-size = [ 720 600 ];
    };

    "org/gnome/Connections" = {
      first-run = false;
    };

    "org/gnome/Console" = {
      font-scale = 1.2;
      last-window-size = mkTuple [ 1417 905 ];
    };

    "org/gnome/TextEditor" = {
      last-save-directory = "file:///home/sean";
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
      word-size = 64;
    };

    "org/gnome/control-center" = {
      last-panel = "keyboard";
      window-state = mkTuple [ 1036 889 false ];
    };

    "org/gnome/desktop/a11y/applications" = {
      screen-reader-enabled = false;
    };

    "org/gnome/desktop/app-folders" = {
      folder-children = [ "Utilities" "YaST" ];
    };

    "org/gnome/desktop/app-folders/folders/Utilities" = {
      apps = [ "gnome-abrt.desktop" "gnome-system-log.desktop" "nm-connection-editor.desktop" "org.gnome.baobab.desktop" "org.gnome.Connections.desktop" "org.gnome.DejaDup.desktop" "org.gnome.Dictionary.desktop" "org.gnome.DiskUtility.desktop" "org.gnome.eog.desktop" "org.gnome.Evince.desktop" "org.gnome.FileRoller.desktop" "org.gnome.fonts.desktop" "org.gnome.seahorse.Application.desktop" "org.gnome.tweaks.desktop" "org.gnome.Usage.desktop" "vinagre.desktop" "xterm.desktop" "nixos-manual.desktop" "htop.desktop" "fish.desktop" ];
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
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = "file:///home/sean/.config/background";
      picture-uri-dark = "file:///home/sean/.config/background";
      primary-color = "#000000000000";
      secondary-color = "#000000000000";
    };

    "org/gnome/desktop/input-sources" = {
      sources = [ (mkTuple [ "xkb" "us" ]) ];
      xkb-options = [ "terminate:ctrl_alt_bksp" ];
    };

    "org/gnome/desktop/interface" = {
      clock-format = "12h";
      clock-show-date = false;
      clock-show-weekday = true;
      color-scheme = "default";
      cursor-size = 24;
      cursor-theme = "Qogir";
      document-font-name = "Open Sans 12";
      enable-animations = true;
      enable-hot-corners = false;
      font-antialiasing = "rgba";
      font-hinting = "slight";
      font-name = "Ubuntu 11";
      icon-theme = "Adwaita";
      monospace-font-name = "Source Code Pro Semi-Bold 13";
      overlay-scrolling = true;
      scaling-factor = mkUint32 1;
      show-battery-percentage = true;
      text-scaling-factor = 1.0;
      toolbar-style = "text";
      toolkit-accessibility = false;
    };

    "org/gnome/desktop/notifications" = {
      application-children = [ "org-qbittorrent-qbittorrent" "org-gnome-nautilus" "org-gnome-shell-extensions-gsconnect" "gnome-power-panel" "gnome-network-panel" "thunderbird" "steam" ];
    };

    "org/gnome/desktop/notifications/application/discord" = {
      application-id = "discord.desktop";
    };

    "org/gnome/desktop/notifications/application/firefox" = {
      application-id = "firefox.desktop";
    };

    "org/gnome/desktop/notifications/application/gnome-network-panel" = {
      application-id = "gnome-network-panel.desktop";
    };

    "org/gnome/desktop/notifications/application/gnome-power-panel" = {
      application-id = "gnome-power-panel.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-console" = {
      application-id = "org.gnome.Console.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-nautilus" = {
      application-id = "org.gnome.Nautilus.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-shell-extensions-gsconnect" = {
      application-id = "org.gnome.Shell.Extensions.GSConnect.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-texteditor" = {
      application-id = "org.gnome.TextEditor.desktop";
    };

    "org/gnome/desktop/notifications/application/org-qbittorrent-qbittorrent" = {
      application-id = "org.qbittorrent.qBittorrent.desktop";
    };

    "org/gnome/desktop/notifications/application/steam" = {
      application-id = "steam.desktop";
    };

    "org/gnome/desktop/notifications/application/thunderbird" = {
      application-id = "thunderbird.desktop";
    };

    "org/gnome/desktop/peripherals/keyboard" = {
      numlock-state = true;
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      send-events = "enabled";
      tap-to-click = true;
      two-finger-scrolling-enabled = true;
    };

    "org/gnome/desktop/screensaver" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = "file:///home/sean/.local/share/backgrounds/2023-12-28-20-44-54-wall%20377.jpg";
      primary-color = "#000000000000";
      secondary-color = "#000000000000";
    };

    "org/gnome/desktop/search-providers" = {
      disabled = [ "org.gnome.Software.desktop" ];
      sort-order = [ "org.gnome.Contacts.desktop" "org.gnome.Documents.desktop" "org.gnome.Nautilus.desktop" ];
    };

    "org/gnome/desktop/session" = {
      idle-delay = mkUint32 720;
    };

    "org/gnome/desktop/sound" = {
      allow-volume-above-100-percent = false;
      theme-name = "freedesktop";
    };

    "org/gnome/desktop/wm/keybindings" = {
      close = [ "<Super>q" ];
    };

    "org/gnome/desktop/wm/preferences" = {
      button-layout = "appmenu:minimize,close";
      titlebar-font = "Ubuntu Bold 11";
    };

    "org/gnome/epiphany" = {
      ask-for-default = false;
    };

    "org/gnome/epiphany/state" = {
      is-maximized = true;
      window-size = mkTuple [ 2256 1472 ];
    };

    "org/gnome/evolution-data-server" = {
      migrated = true;
    };

    "org/gnome/file-roller/listing" = {
      list-mode = "as-folder";
      name-column-width = 250;
      show-path = false;
      sort-method = "name";
      sort-type = "ascending";
    };

    "org/gnome/file-roller/ui" = {
      sidebar-width = 200;
      window-height = 480;
      window-width = 600;
    };

    "org/gnome/gnome-system-monitor" = {
      current-tab = "processes";
      maximized = false;
      network-total-in-bits = false;
      show-dependencies = true;
      show-whose-processes = "all";
      window-state = mkTuple [ 1313 979 26 23 ];
    };

    "org/gnome/gnome-system-monitor/disktreenew" = {
      col-6-visible = true;
      col-6-width = 0;
    };

    "org/gnome/gnome-system-monitor/proctree" = {
      columns-order = [ 0 1 2 3 4 6 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 ];
      sort-col = 8;
      sort-order = 0;
    };

    "org/gnome/mutter" = {
      dynamic-workspaces = true;
      edge-tiling = true;
      experimental-features = [ "scale-monitor-framebuffer" ];
    };

    "org/gnome/nautilus/compression" = {
      default-compression-format = "zip";
    };

    "org/gnome/nautilus/icon-view" = {
      default-zoom-level = "small-plus";
    };

    "org/gnome/nautilus/preferences" = {
      click-policy = "single";
      default-folder-viewer = "icon-view";
      migrated-gtk-settings = true;
      search-filter-time-type = "last_modified";
      search-view = "list-view";
    };

    "org/gnome/nautilus/window-state" = {
      initial-size = mkTuple [ 1293 966 ];
      maximized = false;
    };

    "org/gnome/portal/filechooser/gnome-background-panel" = {
      last-folder-path = "/home/sean/Pictures/Wallpapers";
    };

    "org/gnome/settings-daemon/plugins/color" = {
      night-light-enabled = false;
      night-light-last-coordinates = mkTuple [ 33.99857 (-84.31567) ];
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      custom-keybindings = [ "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/" ];
      home = [ "<Super>f" ];
      www = [ "<Super>b" ];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = "<Super>t";
      command = "kitty";
      name = "Terminal";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1" = {
      binding = "<Super>u";
      command = "kitty distrobox enter arch";
      name = "Arch";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2" = {
      binding = "<Super>e";
      command = "gnome-text-editor";
      name = "Text Editor";
    };

    "org/gnome/settings-daemon/plugins/power" = {
      power-button-action = "hibernate";
      power-saver-profile-on-low-battery = false;
      sleep-inactive-ac-type = "suspend";
    };

    "org/gnome/shell" = {
      app-picker-layout = "[{'Alacritty.desktop': <{'position': <0>}>, 'org.gnome.Contacts.desktop': <{'position': <1>}>, 'org.gnome.Weather.desktop': <{'position': <2>}>, 'brave-browser.desktop': <{'position': <3>}>, 'ca.desrt.dconf-editor.desktop': <{'position': <4>}>, 'org.gnome.Extensions.desktop': <{'position': <5>}>, 'fedora.desktop': <{'position': <6>}>, 'org.fedoraproject.MediaWriter.desktop': <{'position': <7>}>, 'org.gnome.Calculator.desktop': <{'position': <8>}>, 'com.system76.FirmwareManager.desktop': <{'position': <9>}>, 'org.gnome.Settings.desktop': <{'position': <10>}>, 'gnome-system-monitor.desktop': <{'position': <11>}>, 'info.febvre.Komikku.desktop': <{'position': <12>}>, 'Utilities': <{'position': <13>}>, 'org.kde.krita.desktop': <{'position': <14>}>, 'mpv.desktop': <{'position': <15>}>, 'mullvad-vpn.desktop': <{'position': <16>}>, 'protonup-qt.desktop': <{'position': <17>}>, 'org.qbittorrent.qBittorrent.desktop': <{'position': <18>}>, 'org.gnome.Software.desktop': <{'position': <19>}>, 'org.gnome.TextEditor.desktop': <{'position': <20>}>}]";
      disable-user-extensions = false;
      disabled-extensions = [ "blur-my-shell@aunetx" ];
      enabled-extensions = [ "appindicatorsupport@rgcjonas.gmail.com" "dash-to-dock@micxgx.gmail.com" "gsconnect@andyholmes.github.io" "user-theme@gnome-shell-extensions.gcampax.github.com" "just-perfection-desktop@just-perfection" "caffeine@patapon.info" "Vitals@CoreCoding.com" "lockkeys@vaina.lt" "grand-theft-focus@zalckos.github.com" "power-profile-switcher@eliapasquali.github.io" ];
      favorite-apps = [ "org.gnome.Nautilus.desktop" "firefox.desktop" "thunderbird.desktop" "discord.desktop" "steam.desktop" "net.lutris.Lutris.desktop" "ardour8.desktop" "com.obsproject.Studio.desktop" "pycharm-community.desktop" "codium.desktop" "virt-manager.desktop" ];
      last-selected-power-profile = "performance";
      welcome-dialog-last-shown-version = "44.4";
    };

    "org/gnome/shell/extensions/caffeine" = {
      indicator-position-max = 1;
      show-notifications = false;
    };

    "org/gnome/shell/extensions/dash-to-dock" = {
      always-center-icons = false;
      apply-custom-theme = false;
      background-opacity = 1.0;
      click-action = "focus-minimize-or-previews";
      custom-theme-shrink = true;
      customize-alphas = true;
      dash-max-icon-size = 48;
      disable-overview-on-startup = true;
      dock-position = "BOTTOM";
      extend-height = false;
      height-fraction = 1.0;
      hot-keys = false;
      icon-size-fixed = false;
      max-alpha = 0.8;
      min-alpha = 0.45;
      preferred-monitor = -2;
      preferred-monitor-by-connector = "eDP-1";
      preview-size-scale = 1.0;
      show-show-apps-button = false;
      transparency-mode = "DYNAMIC";
    };

    "org/gnome/shell/extensions/gsconnect" = {
      devices = [ "6783b01f_cd4c_46d8_8ab7_8d73efc5d134" ];
      enabled = false;
      id = "b7642b9c-dac1-42ea-aa30-8588966a2d77";
      name = "carlos";
    };

    "org/gnome/shell/extensions/gsconnect/device/6783b01f_cd4c_46d8_8ab7_8d73efc5d134" = {
      certificate-pem = "-----BEGIN CERTIFICATE-----nMIIDHzCCAgegAwIBAgIBATANBgkqhkiG9w0BAQsFADBTMS0wKwYDVQQDDCQ2NzgznYjAxZl9jZDRjXzQ2ZDhfOGFiN184ZDczZWZjNWQxMzQxFDASBgNVBAsMC0tERSBDnb25uZWN0MQwwCgYDVQQKDANLREUwHhcNMjIwOTIwMDQwMDAwWhcNMzIwOTIwMDQwnMDAwWjBTMS0wKwYDVQQDDCQ2NzgzYjAxZl9jZDRjXzQ2ZDhfOGFiN184ZDczZWZjnNWQxMzQxFDASBgNVBAsMC0tERSBDb25uZWN0MQwwCgYDVQQKDANLREUwggEiMA0GnCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCYi7vny5bxVxfuchKp6XaBGVxBESS/nwxnuAzYgHrX2WI5tqUNcNw1TyIf7KVKgtzklB3nwMEJCcXMr6wNZNUTKgZprG+lnnXhW1wfGGzLakotpWOuYVBRrFnfQj0qu7m2AryjHYEQmc8sa9czEYTSh/4FtyrVhBn77KvURnNrDhiw+SNs0s+0NayiChALMMWwTPJGHgjaBI8c7YQlMLR2sGVoH4sBR+nn412UuZk0G/QMDooWfcMUvOxVcMtG3w3IZYX1bAYU0VHHTf14s+AOAI9j+0wsteY7nRRpRi33pxb31LOc6ffevY0P/N3BqHjzFSisA7WUty9N2WU8fCS05/bQFAgMBAAEwnDQYJKoZIhvcNAQELBQADggEBABeH8nWaUWzlcGruXhLlkEGLwB9Cv1RjJBvb3BKNnzWRfy+3SX7XfIOec1LRUXbuCuDioy2RZX6Bvo90IuVqIvfP4tToIrDdy5jIkZLgrnQCAtu2VZDgznWTRb6n2wWy8g9f/lnqBVEVpgdTfg0fgE0DsK/KfOCHKelkpqQ7bineTMr6qKlMKN9vZCl7kd271cqOfyh0VQqbQcwZVRe7vB2rE1o2SHHIL39m1VcRfaenTDFo2F6ceQJTyiQVnlAQw8J2N+cyR3l7wAJyrHE+iYV+P1Kw5D2EiKb+x1R59mSRnsREzffXnLh7CmNszfC85dvevmikCk7rUYR78u8OQI9yEbM8=n-----END CERTIFICATE-----n";
      incoming-capabilities = [ "kdeconnect.battery" "kdeconnect.bigscreen.stt" "kdeconnect.clipboard" "kdeconnect.clipboard.connect" "kdeconnect.contacts.request_all_uids_timestamps" "kdeconnect.contacts.request_vcards_by_uid" "kdeconnect.findmyphone.request" "kdeconnect.mousepad.keyboardstate" "kdeconnect.mousepad.request" "kdeconnect.mpris" "kdeconnect.mpris.request" "kdeconnect.notification" "kdeconnect.notification.action" "kdeconnect.notification.reply" "kdeconnect.notification.request" "kdeconnect.ping" "kdeconnect.runcommand" "kdeconnect.sftp.request" "kdeconnect.share.request" "kdeconnect.share.request.update" "kdeconnect.sms.request" "kdeconnect.sms.request_attachment" "kdeconnect.sms.request_conversation" "kdeconnect.sms.request_conversations" "kdeconnect.systemvolume" "kdeconnect.telephony.request" "kdeconnect.telephony.request_mute" ];
      last-connection = "lan://192.168.0.59:1716";
      name = "cecil";
      outgoing-capabilities = [ "kdeconnect.battery" "kdeconnect.bigscreen.stt" "kdeconnect.clipboard" "kdeconnect.clipboard.connect" "kdeconnect.connectivity_report" "kdeconnect.contacts.response_uids_timestamps" "kdeconnect.contacts.response_vcards" "kdeconnect.findmyphone.request" "kdeconnect.mousepad.echo" "kdeconnect.mousepad.keyboardstate" "kdeconnect.mousepad.request" "kdeconnect.mpris" "kdeconnect.mpris.request" "kdeconnect.notification" "kdeconnect.notification.request" "kdeconnect.ping" "kdeconnect.presenter" "kdeconnect.runcommand.request" "kdeconnect.sftp" "kdeconnect.share.request" "kdeconnect.sms.attachment_file" "kdeconnect.sms.messages" "kdeconnect.systemvolume.request" "kdeconnect.telephony" ];
      paired = true;
      supported-plugins = [ "battery" "clipboard" "connectivity_report" "contacts" "findmyphone" "mousepad" "mpris" "notification" "ping" "presenter" "runcommand" "sftp" "share" "sms" "systemvolume" "telephony" ];
      type = "phone";
    };

    "org/gnome/shell/extensions/gsconnect/device/6783b01f_cd4c_46d8_8ab7_8d73efc5d134/plugin/battery" = {
      custom-battery-notification-value = mkUint32 80;
    };

    "org/gnome/shell/extensions/gsconnect/device/6783b01f_cd4c_46d8_8ab7_8d73efc5d134/plugin/notification" = {
      applications = ''
      '';
    };

    "org/gnome/shell/extensions/gsconnect/device/6783b01f_cd4c_46d8_8ab7_8d73efc5d134/plugin/share" = {
      receive-directory = "/home/sean/Downloads";
    };

    "org/gnome/shell/extensions/gsconnect/preferences" = {
      window-maximized = false;
      window-size = mkTuple [ 808 706 ];
    };

    "org/gnome/shell/extensions/vitals" = {
      hot-sensors = [ "_temperature_acpi_thermal zone_" ];
      show-battery = true;
      show-fan = false;
      show-storage = false;
      show-voltage = false;
    };

    "org/gnome/shell/world-clocks" = {
      locations = "@av []";
    };

    "org/gnome/software" = {
      check-timestamp = mkInt64 1705327740;
      first-run = false;
      flatpak-purge-timestamp = mkInt64 1700627303;
    };

    "org/gnome/tweaks" = {
      show-extensions-notice = false;
    };

    "org/gtk/gtk4/settings/color-chooser" = {
      custom-colors = [ (mkTuple [ 0.0 0.14 ]) (mkTuple [ 1.0 0.972549 ]) ];
      selected-color = mkTuple [ true 0.0 ];
    };

    "org/gtk/gtk4/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = false;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 140;
      sort-column = "name";
      sort-directories-first = true;
      sort-order = "ascending";
      type-format = "category";
      view-type = "grid";
      window-size = mkTuple [ 1162 893 ];
    };

    "org/gtk/settings/file-chooser" = {
      clock-format = "12h";
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = false;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 161;
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
      forcepoweroff = false;
    };

    "org/virt-manager/virt-manager/connections" = {
      autoconnect = [ "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" ];
      uris = [ "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" "qemu:///system" ];
    };

    "org/virt-manager/virt-manager/conns/qemu:system" = {
      window-size = mkTuple [ 800 600 ];
    };

    "org/virt-manager/virt-manager/details" = {
      show-toolbar = true;
    };

    "org/virt-manager/virt-manager/new-vm" = {
      graphics-type = "system";
    };

    "org/virt-manager/virt-manager/urls" = {
      isos = [ "/home/sean/Downloads/Software/Linux Images/openSUSE_Krypton.x86_64-16.0-Build11.27.iso" "/home/sean/Downloads/Software/Linux Images/universalblue-38-x86_64-20230418.iso" ];
    };

    "org/virt-manager/virt-manager/vmlist-fields" = {
      disk-usage = false;
      network-traffic = false;
    };

    "org/virt-manager/virt-manager/vms/14d9c2e0b3a24c05b555d0f7cb9f08b5" = {
      autoconnect = 1;
      scaling = 1;
      vm-window-size = mkTuple [ 1805 1129 ];
    };

    "org/virt-manager/virt-manager/vms/b9098ac8eb244f2a9939a8a0ab78f257" = {
      autoconnect = 1;
      scaling = 1;
      vm-window-size = mkTuple [ 1805 1138 ];
    };

  };
}
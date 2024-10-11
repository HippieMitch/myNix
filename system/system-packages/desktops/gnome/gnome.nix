# Use Gnome

{ pkgs, ... }:

{
  # Enable the GNOME Desktop Environment
  services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
  };
  environment.gnome.excludePackages = (with pkgs; [
   epiphany
   gnome-console
   cheese
   geary
   gnome-calendar
   gnome-characters
   gnome-clocks
   gnome-maps
   gnome-music
   gnome-photos
   simple-scan
   gnome-tour
   totem
   yelp
   loupe
  ]);
  services.udev.packages = with pkgs; [ gnome-settings-daemon ];

  services.gnome = {
    tracker-miners.enable = false;
    tracker.enable = false;
  };

  # XDG
  xdg.portal.enable = true;

  # Gnome Applications     
  environment.systemPackages = with pkgs; [
   dconf2nix
   ffmpegthumbnailer
   eog
   dconf-editor
   gnomeExtensions.appindicator
   gnomeExtensions.caffeine
   gnomeExtensions.clipboard-history
   gnomeExtensions.dash-to-dock
   gnomeExtensions.grand-theft-focus
   gnomeExtensions.gsconnect
   gnomeExtensions.hibernate-status-button
#   gnomeExtensions.power-profile-switcher
   gnomeExtensions.pop-shell
#   gnomeExtensions.system76-scheduler
   gnomeExtensions.vitals
   gnome-tweaks
   nautilus-python

   # Icon Themes
   papirus-icon-theme
   qogir-icon-theme
   tela-icon-theme
   ];
 
   # Set GTK Theme for QT Applications
   qt.platformTheme = "gtk";
   qt.style = "adwaita-dark";
}

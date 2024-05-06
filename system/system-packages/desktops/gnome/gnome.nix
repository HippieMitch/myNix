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
   gnome.cheese
   gnome.geary
   gnome.gnome-calendar
   gnome.gnome-characters
   gnome.gnome-clocks
   gnome.gnome-maps
   gnome.gnome-music
   gnome-photos
   gnome.simple-scan
   gnome-tour
   gnome.totem
   gnome.yelp
   loupe
  ]);
  services.udev.packages = with pkgs; [ gnome.gnome-settings-daemon ];

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
   gnome.eog
   gnome.dconf-editor
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
   gnome.gnome-tweaks
   gnome.nautilus-python

   # Icon Themes
   papirus-icon-theme
   qogir-icon-theme
   tela-icon-theme
   ];
 
   # Set GTK Theme for QT Applications
   qt.platformTheme = "gtk";
   qt.style = "adwaita-dark";
}

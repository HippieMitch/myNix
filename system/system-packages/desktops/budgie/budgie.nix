# Use Budgie Desktop Environment

{ pkgs, ... }:

{

  # Enable the Budgie Desktop Environment
  services.xserver.enable = true;
  services.desktopManager.budgie.enable = true;
  services.xserver.displayManager.lightdm.enable = true;
  services.displayManager.defaultSession = "budgie-desktop";
  services.udev.packages = with pkgs; [ pkgs.gnome-settings-daemon ];

  # XDG
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
    ];
  };

   # Applications
   environment.systemPackages = with pkgs; [

   # Icon Themes
   kora-icon-theme
   qogir-icon-theme
   tela-icon-theme
   ];

   # Set GTK Theme for QT Applications
#   qt.platformTheme = "gtk2";
#   qt.style = "adwaita";

}

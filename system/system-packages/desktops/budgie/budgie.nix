# Use Budgie Desktop Environment

{ pkgs, ... }:

{

  # Enable the Budgie Desktop Environment
  services.xserver.desktopManager.budgie.enable = true;
  services.udev.packages = with pkgs; [ gnome.gnome-settings-daemon ];

  # XDG
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      #xdg-desktop-portal-gtk
      xdg-desktop-portal-kde
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

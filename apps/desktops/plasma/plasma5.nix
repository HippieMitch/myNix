  # Use KDE Plasma
  
{ pkgs, ... }:

{
  # Enable the KDE Plasma Desktop Environment.
  services.xserver.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
  };
  services.xserver.desktopManager.plasma5.enable = true;
  environment.plasma5.excludePackages = with pkgs.libsForQt5; [
   elisa
  ];
  services.xserver.displayManager.defaultSession = "plasmawayland";
  programs.kdeconnect.enable = true;

  # XDG
  xdg.portal.enable = true;

  # Plasma Apps
  environment.systemPackages = with pkgs; [
   libsForQt5.filelight
   libsForQt5.kate
   libsForQt5.kcalc
   libsForQt5.kpmcore
   libsForQt5.kcalc
   partition-manager
   qbittorrent

  # Icon Themes
   qogir-icon-theme
   tela-icon-theme

   ];
}

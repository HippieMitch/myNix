# Use KDE Plasma
  
{ pkgs, ... }:

{

  # Enable the KDE Plasma Desktop Environment
    services.xserver.displayManager = {
      sddm = {
        enable = true;
        wayland.enable = true;
      };
      defaultSession = "plasma";
    };
    services.xserver.desktopManager.plasma6.enable = true;
    programs.kdeconnect.enable = true;

  # Portals
    xdg.portal.enable = true;

  # Plasma Packages
    environment.plasma6.excludePackages = with pkgs.kdePackages; [
      elisa
    ];
    
    environment.systemPackages = with pkgs; [
      libsForQt5.filelight
      libsForQt5.kate
      libsForQt5.kcalc
      libsForQt5.kpmcore
      libsForQt5.kcalc
      partition-manager
      wayland-utils

    # Icon Themes
      qogir-icon-theme
      tela-icon-theme 

    ];
}

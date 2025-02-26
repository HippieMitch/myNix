# Use KDE Plasma
  
{ pkgs, ... }:

{

  # Enable the KDE Plasma Desktop Environment
    services.displayManager = {
      sddm = {
        enable = true;
        wayland.enable = true;
      };
      defaultSession = "plasma";
    };
    services.desktopManager.plasma6.enable = true;
    programs.kdeconnect.enable = true;

  # Portals
    xdg.portal.enable = true;

  # Plasma Packages
    environment.plasma6.excludePackages = with pkgs.kdePackages; [
      elisa
    ];
    
    environment.systemPackages = with pkgs; [
      kdePackages.filelight
      kdePackages.kate
      kdePackages.kcalc
      kdePackages.kpmcore
      kdePackages.partitionmanager
      clinfo
      wayland-utils
      vulkan-tools

    # Icon Themes
      stable.tela-icon-theme 

    ];
}

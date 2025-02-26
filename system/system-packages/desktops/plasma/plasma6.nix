# Use KDE Plasma
  
{ pkgs, ... }:

{

  # Enable the KDE Plasma Desktop Environment
  services = {
    displayManager = {
      sddm = {
        enable = true;
        wayland.enable = true;
      };
      defaultSession = "plasma";
    };
    desktopManager.plasma6 = {
      enable = true;
      enableQt5Integration = false;
    };
  };
    programs.kdeconnect.enable = true;

  # Portals
    xdg.portal.enable = true;

  # Environment
    environment = {
      sessionVariables = {
        GTK_USE_PORTAL = "1";
        GTK_THEME = "Breeze";
        NIXOS_OZONE_WL = "1";
      };

      plasma6.excludePackages = with pkgs.kdePackages; [
        elisa
      ];
    
      systemPackages = with pkgs; [
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

    };
}

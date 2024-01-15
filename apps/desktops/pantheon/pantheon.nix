# Use Pantheon

{ lib, pkgs, ... }:

{ 	
	  # Enable Pantheon
	  services.xserver.displayManager.lightdm.enable = true;
	  services.xserver.desktopManager.pantheon.enable = true;
	  services.xserver.desktopManager.pantheon.extraWingpanelIndicators = with pkgs; [ monitor ];
          services.xserver.displayManager.defaultSession = "pantheon";
          services.pantheon.contractor.enable = true;
          programs.pantheon-tweaks.enable = true;

          # XDG 
          xdg.portal.enable = true;
          
          # Exclude Applications
          environment.pantheon.excludePackages = with pkgs; [
           pantheon.elementary-mail
           pantheon.elementary-music
           pantheon.elementary-videos 
           pantheon.epiphany
          ];

          # Include Applications
          environment.systemPackages = with pkgs; [
           baobab
           ffmpegthumbnailer
           valent

          # Icon Themes
           kora-icon-theme
           qogir-icon-theme
           tela-icon-theme
          ];
}

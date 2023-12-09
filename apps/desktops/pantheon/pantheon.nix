# Use Pantheon

{ lib, pkgs, ... }:

{ 	
	  # Enable Pantheon
	  services.xserver.enable = lib.mkDefault true;
	  services.xserver.displayManager.lightdm.enable = lib.mkDefault true;
	  services.xserver.desktopManager.pantheon.enable = lib.mkDefault true;
	  services.xserver.desktopManager.pantheon.extraWingpanelIndicators = with pkgs; [ monitor ];
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

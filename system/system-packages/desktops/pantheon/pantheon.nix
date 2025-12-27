# Use Pantheon

{ pkgs, ... }:

{ 	
	  # Enable Pantheon
          services.xserver.enable = true;
          services.desktopManager.pantheon = {
            enable = true;
            extraWingpanelIndicators = with pkgs; [ monitor ];
          };
          services.displayManager.defaultSession = "pantheon-wayland";
          services.xserver.displayManager.lightdm = {
            enable = true;
            greeters.pantheon.enable = true;
          };
        #  services.pantheon.contractor.enable = true;

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

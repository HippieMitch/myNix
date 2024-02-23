{ config, pkgs, lib, ... }:

{
    environment.systemPackages = with pkgs; [
      cosmic-applibrary
      cosmic-applets
      cosmic-bg
      cosmic-comp
      cosmic-edit
      cosmic-files
      cosmic-greeter
      cosmic-icons
      cosmic-launcher
      cosmic-notifications
      cosmic-osd
      cosmic-panel
      cosmic-randr
      cosmic-screenshot
      cosmic-settings
      cosmic-settings-daemon
      cosmic-term
      cosmic-workspaces-epoch
    ];
    
    # COSMIC portal doesn't support everything yet

      xdg.portal.enable = true;
      xdg.portal.extraPortals = with pkgs; [ xdg-desktop-portal-cosmic xdg-desktop-portal-gtk ];
      xdg.portal.config.common.default = "*";

    # session files for display manager and systemd
    services.xserver.displayManager.sessionPackages = with pkgs; [ cosmic-session ];
    systemd.packages = with pkgs; [ cosmic-session ];
}

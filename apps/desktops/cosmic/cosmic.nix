  # Use COSMIC

{ pkgs, inputs, ... }:

{

  # XDG
  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-cosmic ];
  xdg.portal.config.common.default = "*";
  
  # Enable COSMIC Desktop Environment
  environment.systemPackages = with pkgs; [
    rustc
    just
    master.cosmic-applets
    master.cosmic-applibrary
    master.cosmic-bg
    master.cosmic-comp
    master.cosmic-icons
    master.cosmic-launcher
    master.cosmic-notifications
    master.cosmic-osd
    master.cosmic-panel
    cosmic.cosmic-session
    master.cosmic-settings
    master.cosmic-settings-daemon
    master.cosmic-workspaces-epoch
    master.cosmic-greeter
    master.cosmic-edit
    master.cosmic-screenshot
    master.cosmic-term
    master.cosmic-randr
    master.cosmic-files
  ];
}

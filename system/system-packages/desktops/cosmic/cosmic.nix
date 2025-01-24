# Cosmic Desktop

{ pkgs, ... }:

{
  services = {
    desktopManager.cosmic.enable = true;
    displayManager.cosmic-greeter.enable = true;
  };
  environment = {
    systemPackages = [ pkgs.loupe ];
    sessionVariables.COSMIC_DATA_CONTROL_ENABLED = 1;
  };
}

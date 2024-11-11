# Cosmic Desktop

{ pkgs, ... }:

{
  services = {
    desktopManager.cosmic.enable = true;
    displayManager.cosmic-greeter.enable = true;
  };
  environment.systemPackages = [ pkgs.loupe  ];
}

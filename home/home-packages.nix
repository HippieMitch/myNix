# Home Packages

{ pkgs, ... }:

{
  home.packages = with pkgs; [

  # Programs
    stable.ardour
    discord
  #  element-desktop
    krita
    lutris
    obs-studio
    qbittorrent
    qpwgraph
    wineWowPackages.staging

  # Command Line Tools
    ani-cli
    git-credential-manager
    lsd

  # Development
    pixelflasher
  ];
}


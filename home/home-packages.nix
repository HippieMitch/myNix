# Home Packages

{ pkgs, ... }:

{
  home.packages = with pkgs; [

  # Programs
    stable.ardour
    cockatrice
    discord
  #  element-desktop
    krita
    lutris
    obs-studio
    qbittorrent
    qpwgraph
    wineWow64Packages.staging

  # Command Line Tools
    ani-cli
    git-credential-manager
    lsd

  # Development
    pixelflasher
  ];
}


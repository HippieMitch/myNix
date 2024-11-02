# Home Packages

{ pkgs, ... }:

{
  home.packages = with pkgs; [

  # Programs
    ardour
    discord
    element-desktop
    krita
    lutris
    obs-studio
    qbittorrent
    qpwgraph
    thunderbird
    wineWowPackages.staging

  # Command Line Tools
    ani-cli
    lsd

  # Development
    jetbrains.pycharm-community-bin
  ];
}


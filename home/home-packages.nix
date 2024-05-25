# Home Packages

{ pkgs, inputs, ... }:

{
  home.packages = with pkgs; [

  # Programs
    ardour
    discord
    google-chrome
    krita
    lutris
    obs-studio
    qbittorrent
    qpwgraph
    thunderbird
    (vscode-with-extensions.override {
      vscode = vscodium;
        vscodeExtensions = with vscode-extensions; [
          github.github-vscode-theme
          vadimcn.vscode-lldb
          vscode-extensions.golang.go
      ];
    })
    wineWowPackages.staging

  # Command Line Tools
    ani-cli
    lsd

  # Development
    jetbrains.pycharm-community
  ];
}


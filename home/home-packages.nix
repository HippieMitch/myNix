# Home Packages

{ pkgs, inputs, ... }:

{
  home.packages = with pkgs; [

  # Programs
    ardour
    deja-dup
    discord
    element-desktop
    gocryptfs
    google-chrome
    komikku
    krita
    lutris
    macchina
    obs-studio
    protonup-qt
    qbittorrent
    qpwgraph
    thunderbird
    (vscode-with-extensions.override {
      vscode = vscodium;
        vscodeExtensions = with vscode-extensions; [
          arrterian.nix-env-selector
          github.github-vscode-theme
          ms-python.python
          rust-lang.rust-analyzer
          vadimcn.vscode-lldb
      ];
    })
    wineWowPackages.staging

  # Command Line Tools
    ani-cli
    lsd

  # Development
    jetbrains.pycharm-community
    python3
    rustc
    cargo
    gcc
  ];
}


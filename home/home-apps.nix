# Home Applications

{ pkgs, inputs, ... }:

{
home.packages = with pkgs; [
    master.ani-cli
    ardour
    brave
    discord
    gocryptfs
    stable.komikku
    krita
    lutris
    macchina
    obs-studio
    protonup-qt
    qbittorrent
    thunderbird
    (vscode-with-extensions.override {
      vscode = vscodium;
        vscodeExtensions = with vscode-extensions; [
          arrterian.nix-env-selector
          github.github-vscode-theme
          ms-python.python
          vadimcn.vscode-lldb
    ];
  })
    wineWowPackages.staging

  # Command Line Tools
    lsd

  # Command Line Fonts
    nerdfonts

  # Development
    jetbrains.pycharm-community
    python3
 ];
}


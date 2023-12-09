# Home Applications

{ pkgs, inputs, ... }:

{
home.packages = with pkgs; [
    ani-cli
    ardour
    brave
    gocryptfs
    master.discord
    master.kitty
    komikku
    krita
    lutris
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


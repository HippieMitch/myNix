# Home Applications

{ pkgs, inputs, ... }:

{
home.packages = with pkgs; [
    master.ani-cli
    unstable.ardour
    unstable.brave
    unstable.deja-dup
    unstable.discord
    unstable.element-desktop
    gocryptfs
    stable.komikku
    unstable.krita
    unstable.lutris
    macchina
    unstable.obs-studio
    protonup-qt
    qbittorrent
    qpwgraph
    unstable.thunderbird
    (vscode-with-extensions.override {
      vscode = unstable.vscodium;
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
    lsd

  # Command Line Fonts
    nerdfonts

  # Development
    unstable.jetbrains.pycharm-community
    python3
    rustc
    cargo
    gcc
 ];
}


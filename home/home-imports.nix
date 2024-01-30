# Home Imports

{ ... }:

{
imports =
    [  

# Home Applications
    ./home-apps.nix

# dconf
    #../system/desktops/gnome/dconf/dconf.nix

# home-manager
    #../system/desktops/xfce/xfce-home.nix
    #./home-apps/fish/fish.nix
    ./home-apps/kitty/kitty.nix
    ./home-apps/zsh/zsh.nix
  ];
}

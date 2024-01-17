# Home Imports

{ ... }:

{
imports =
    [  

# Home Applications
    ./home-apps.nix

# dconf
    #../system/desktops/gnome/dconf.nix

# home-manager
    #../system/desktops/xfce/xfce-home.nix
    ./home-apps/fish.nix
    ./home-apps/kitty.nix
  ];
}

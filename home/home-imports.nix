# Home Imports

{ ... }:

{
imports =
    [  

# Home Applications
    ../apps/home-apps.nix

# dconf
    ../apps/desktops/gnome/dconf.nix

# home-manager
    #../apps/desktops/xfce/xfce-home.nix
    ./home-manager/fish.nix
    ./home-manager/kitty.nix
    ];
}

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
    ./home-apps/mpv/mpv.nix
    ./home-apps/shells/fish/fish.nix
    #./home-apps/shells/zsh/zsh.nix
    #./home-apps/terminals/alacritty/alacritty.nix
    ./home-apps/terminals/kitty/kitty.nix
    #./home-apps/window-managers/hyprland/hyprland.nix
  ];
}

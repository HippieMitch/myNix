# Home Imports

{ ... }:

{
imports =
    [  

  # Home Packages
    ./home-packages.nix

  # dconf
    #../system/system-packages/desktops/gnome/dconf/dconf.nix

  # home-manager
    #../system/system-packages/desktops/xfce/xfce-home.nix
    ./home-packages/mpv/mpv.nix
    #./home-packages/shells/fish/fish.nix
    ./home-packages/shells/zsh/zsh.nix
    #./home-packages/terminals/alacritty/alacritty.nix
    ./home-packages/terminals/kitty/kitty.nix
    #./home-packages/window-managers/hyprland/hyprland.nix
  ];
}

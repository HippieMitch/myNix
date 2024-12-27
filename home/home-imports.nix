# Home Imports

{ ... }:

{
imports =
    [  

  # Home Packages
    ./home-packages.nix

  # Desktops
    #../system/system-packages/desktops/gnome/dconf/dconf.nix
    ../system/system-packages/desktops/plasma/plasma-manager/plasma-manager.nix

  # home-manager
    #../system/system-packages/desktops/xfce/xfce-home.nix
    ./home-packages/browsers/firefox/firefox.nix
    ./home-packages/btop/btop.nix
    ./home-packages/editors/vscodium/vscodium.nix
    #./home-packages/editors/zed/zed.nix
    ./home-packages/mpv/mpv.nix
    ./home-packages/fastfetch/fastfetch.nix
    #./home-packages/fastfetch/fastfetch-small.nix
    ./home-packages/shells/fish/fish.nix
    #./home-packages/shells/zsh/zsh.nix
    ./home-packages/terminals/alacritty/alacritty.nix
    #./home-packages/terminals/kitty/kitty.nix
    #./home-packages/window-managers/hyprland/hyprland.nix
    ./home-packages/virtualization/virt-manager/virt-manager.nix
  ];
}

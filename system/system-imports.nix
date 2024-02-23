# System Imports

{ config, ... }:

{
 imports =
    [ 

  # Hardware Config
    ./hardware.nix

  # System Packages
    ./system-packages.nix

  # Kernels
    ./kernels/vanilla.nix
    #./kernels/cachy.nix
    #./kernels/cachy-lto.nix
    #./kernels/cachy-sched-ext.nix

  # Modules
    ./modules/sysctl.nix
    ./modules/modprobe.nix

  # Daemons
    ./daemons/schedulers/ananicy-cpp.nix
    #./daemons/schedulers/system76-scheduler.nix
    ./daemons/tlp.nix

  # Desktop Environments
    #./desktops/gnome/gnome.nix
    ./desktops/plasma/plasma5.nix
    #./desktops/plasma/plasma6.nix
    #./desktops/cosmic/cosmic.nix
    #./desktops/cinnamon/cinnamon.nix
    #./desktops/xfce/xfce.nix
    #./desktops/pantheon/pantheon.nix
    #./desktops/budgie/budgie.nix

  # Window Managers
    #./window-managers/hyprland/hyprland.nix

  # Shells
    ./system-packages/shells/fish/fish.nix
    #./system-packages/shells/zsh/zsh.nix

  # System Applications
    ./system-packages/neovim/neovim.nix
  ];
}

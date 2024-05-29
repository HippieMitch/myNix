# System Imports

{ config, ... }:

{
 imports =
    [ 

  # Hardware Config
    ./hardware.nix

  # Machines
    ./machines/fw13.nix

  # Overlays
    #./overlays/fprintd-bypass-pam-testing.nix
    #./overlays/mutter-triple-buffering.nix

  # System Packages
    ./system-packages.nix

  # Kernels
    #./kernels/cachy.nix
    #./kernels/cachy-lto.nix
    #./kernels/cachy-sched-ext.nix
    #./kernels/lts.nix
    ./kernels/vanilla.nix
    #./kernels/xanmod.nix

  # Modules
    ./modules/apparmor.nix
    ./modules/modprobe.nix
    ./modules/sysctl.nix

  # Daemons
    ./daemons/schedulers/ananicy-cpp.nix
    #./daemons/schedulers/system76-scheduler.nix
    #./daemons/fprintd.nix
    ./daemons/tlp.nix

  # Desktop Environments
    #./system-packages/desktops/gnome/gnome.nix
    ./system-packages/desktops/plasma/plasma6.nix
    #./system-packages/desktops/cosmic/cosmic.nix
    #./system-packages/desktops/cinnamon/cinnamon.nix
    #./system-packages/desktops/xfce/xfce.nix
    #./system-packages/desktops/pantheon/pantheon.nix
    #./system-packages/desktops/budgie/budgie.nix

  # Window Managers
    #./system-packages/window-managers/hyprland/hyprland.nix
    #./system-packages/window-managers/sway/sway.nix

  # Shells
    #./system-packages/shells/fish/fish.nix
    ./system-packages/shells/zsh/zsh.nix

  # System Applications
    ./system-packages/neovim/neovim.nix
  ];
}

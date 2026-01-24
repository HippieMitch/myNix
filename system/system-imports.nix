# System Imports

{ ... }:

{
 imports =
    [ 

  # Hardware Config
    ./hardware/disko.nix
    ./hardware/hardware.nix

  # Machines
    ./machines/fw13.nix

  # Overlays
    #./overlays/fprintd-bypass-pam-testing.nix
    #./overlays/mutter-triple-buffering.nix
    #./overlays/tlp.nix

  # System Packages
    ./system-packages.nix

  # Kernels
    #./kernels/cachy-lto.nix
    #./kernels/cachy.nix
    #./kernels/lts.nix
    #./kernels/rt.nix
    #./kernels/vanilla.nix
    #./kernels/xanmod.nix
    ./kernels/zen.nix

  # Modules
    ./modules/autoupgrade.nix
    ./modules/dns.nix
    ./modules/modprobe.nix
    #./modules/printing.nix
    ./modules/plymouth/plymouth.nix
    ./modules/security.nix
    ./modules/sysctl.nix

  # Daemons
    ./daemons/fprintd.nix
    #./daemons/schedulers/ananicy-cpp.nix
    #./daemons/schedulers/system76-scheduler.nix
    ./daemons/scx.nix
    #./daemons/sshd.nix
    #./daemons/tlp.nix
    ./daemons/tuned.nix

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
    ./system-packages/shells/fish/fish.nix
    #./system-packages/shells/zsh/zsh.nix

  # System Applications
    ./system-packages/editors/neovim/neovim.nix
  ];
}

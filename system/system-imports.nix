# System Imports

{ ... }:

{
 imports =
    [ 

# Hardware Config
      ./hardware-configuration.nix

# System Applications
      ../apps/system-apps.nix

# Kernels
      ./kernels/vanilla.nix
      #./kernels/cachy.nix
      #./kernels/cachy-sched-ext.nix

# Modules
      ./modules/sysctl.nix
      ./modules/modprobe.nix

# Daemons
      ./daemons/schedulers/ananicy-cpp.nix
      #./daemons/schedulers/system76-scheduler.nix
      ./daemons/tlp.nix

# Desktop Environments
      #../apps/desktops/gnome/gnome.nix
      #../apps/desktops/plasma/plasma5.nix
      ../apps/desktops/plasma/plasma6.nix
      #../apps/desktops/cosmic/cosmic.nix
      #../apps/desktops/xfce/xfce.nix
      #../apps/desktops/pantheon/pantheon.nix
      #../apps/desktops/budgie/budgie.nix
    ];
}

# System Imports

{ ... }:

{
 imports =
    [ 
      ./hardware-configuration.nix
      ../apps/system-apps.nix
      ./kernels/vanilla.nix
      #./kernels/cachy.nix
      #./kernels/cachy-sched-ext.nix
      ./modules/sysctl.nix
      ./modules/modprobe.nix
      ./daemons/schedulers/ananicy-cpp.nix
      #./daemons/schedulers/system76-scheduler.nix
      ./daemons/tlp.nix
      #../apps/desktops/gnome/gnome.nix
      #../apps/desktops/plasma/plasma5.nix
      ../apps/desktops/plasma/plasma6.nix
      #../apps/desktops/xfce/xfce.nix
      #../apps/desktops/pantheon/pantheon.nix
      #../apps/desktops/budgie/budgie.nix
    ];
}

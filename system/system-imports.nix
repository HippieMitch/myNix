# System Imports

{ ... }:

{
 imports =
    [ 
      ./hardware-configuration.nix
      ../apps/system-apps.nix
      ./kernels/vanilla.nix
      #./kernels/cachy.nix
      ./modules/sysctl.nix
      ./daemons/schedulers/ananicy-cpp.nix
      #./daemons/schedulers/system76-scheduler.nix
      ./daemons/tlp.nix
      #../apps/desktops/gnome/gnome.nix
      ../apps/desktops/kde/kde.nix
      #../apps/desktops/xfce/xfce.nix
      #../apps/desktops/pantheon/pantheon.nix
      #../apps/desktops/budgie/budgie.nix
    ];
}

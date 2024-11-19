  # Use Cachy Kernel (sched-ext)

{ pkgs, ... }:

{
  # Kernel
  boot.kernelPackages =  pkgs.linuxPackages_cachyos;
  chaotic.scx = {
    enable = true;
    scheduler = "scx_rusty";
  };
}

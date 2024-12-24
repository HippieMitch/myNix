  # Use Cachy Kernel (sched-ext)

{ pkgs, ... }:

{
  # Kernel
  boot.kernelPackages =  pkgs.linuxPackages_cachyos;
  services.scx = {
    enable = true;
    package = pkgs.master.scx.full;
    scheduler = "scx_bpfland";
  };
}

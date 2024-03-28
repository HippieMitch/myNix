  # Use Cachy Kernel (sched-ext)

{ pkgs, inputs, ... }:

{
  # Kernel
  boot.kernelPackages =  pkgs.linuxPackages_cachyos-sched-ext;
  environment.systemPackages =  [ pkgs.scx ];
}

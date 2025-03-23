  # Use Real-time Kernel

{ pkgs, ... }:

{
  # Kernel
  boot.kernelPackages = pkgs.linuxPackages-rt_latest;
}

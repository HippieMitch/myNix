  # Use Vanilla Kernel

{ pkgs, ... }:

{
  # Kernel
  boot.kernelPackages = pkgs.linuxPackages_latest;
}

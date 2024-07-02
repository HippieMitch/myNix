  # Use Zen Kernel

{ pkgs, ... }:

{
  # Kernel
  boot.kernelPackages = pkgs.linuxPackages_zen;
}

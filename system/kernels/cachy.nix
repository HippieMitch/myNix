  # Use Cachy Kernel (default)

{ pkgs, inputs, ... }:

{
  # Kernel
  boot.kernelPackages =  pkgs.linuxPackages_cachyos;
}

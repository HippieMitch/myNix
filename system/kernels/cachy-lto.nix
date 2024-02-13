  # Use Cachy Kernel (LTO)

{ pkgs, inputs, ... }:

{
  # Kernel
  boot.kernelPackages =  pkgs.linuxPackages_cachyos-lto;
}

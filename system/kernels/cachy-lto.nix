  # Use Cachy Kernel (LTO)

{ pkgs, ... }:

{
  # Kernel
  boot.kernelPackages =  pkgs.linuxPackages_cachyos-lto;
}

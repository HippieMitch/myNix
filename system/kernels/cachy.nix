  # Use Cachy Kernel (BORE w/ EEVDF CPU Schedulers)

{ pkgs, inputs, ... }:

{
  # Kernel
  boot.kernelPackages =  pkgs.linuxPackages_cachyos;
}

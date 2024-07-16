  # Use Cachy Kernel (LTO)

{ pkgs, inputs, ... }:

{
  # Kernel
  boot.kernelPackages =  pkgs.linuxPackages_cachyos-lto;
  chaotic.scx = {
    enable = true;
  #  scheduler = "scx_rusty";
    scheduler = "scx_lavd";
  };
}

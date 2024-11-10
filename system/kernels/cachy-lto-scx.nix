  # Use Cachy Kernel (LTO)

{ pkgs, ... }:

{
  # Kernel
  boot.kernelPackages =  pkgs.linuxPackages_cachyos-lto;
  chaotic.scx = {
    enable = true;
  #  scheduler = "scx_rusty";
  #  scheduler = "scx_lavd";
  #  scheduler = "scx_rustland";
    scheduler = "scx_bpfland";
  };
}

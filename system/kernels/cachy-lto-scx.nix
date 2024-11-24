  # Use Cachy Kernel (LTO)

{ pkgs, ... }:

{
  # Kernel
  boot.kernelPackages =  pkgs.linuxPackages_cachyos-lto;
  chaotic.scx = {
    enable = true;
    package = pkgs.master.scx.full;
  #  package = pkgs.scx_git.full;
  #  scheduler = "scx_rusty";
  #  scheduler = "scx_lavd";
  #  scheduler = "scx_rustland";
    scheduler = "scx_bpfland";
  };
}

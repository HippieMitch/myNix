  # Use Vanilla Kernel

{ pkgs, ... }:

{
  # Kernel
  boot.kernelPackages = pkgs.linuxPackages_latest;
  services.scx = {
    enable = true;
    package = pkgs.master.scx.full;
    scheduler = "scx_bpfland";
  };
}

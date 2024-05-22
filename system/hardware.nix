# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot.initrd.availableKernelModules = [ "xhci_pci" "thunderbolt" "nvme" "uas" "usb_storage" "sd_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/91c6f5c4-0ab0-45b4-b769-fa39d7958dbd";
      fsType = "btrfs";
      options = [ "subvol=root" "ssd" "noatime" "compress=zstd:1" ];
    };

  boot.initrd.luks.devices = {
    nixcrypt = {
      device = "/dev/disk/by-uuid/070d9720-f20b-429e-bd09-68000d8c92d8";
      allowDiscards = true;
      };
    };

  fileSystems."/home" =
    { device = "/dev/disk/by-uuid/91c6f5c4-0ab0-45b4-b769-fa39d7958dbd";
      fsType = "btrfs";
      options = [ "subvol=home" "ssd" "noatime" "compress=zstd:1" ];
    };

  fileSystems."/nix" =
    { device = "/dev/disk/by-uuid/91c6f5c4-0ab0-45b4-b769-fa39d7958dbd";
      fsType = "btrfs";
      options = [ "subvol=nix" "ssd" "noatime" "compress=zstd:1" ];
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/9AF2-7351";
      fsType = "vfat";
      options = [ "fmask=0022" "dmask=0022" ];
    };

  fileSystems."/mnt/secondary" =
    { device = "/dev/sda1";
      fsType = "ext4";
      options = [ "noatime" "nosuid" "nodev" "nofail" "x-gvfs-show" "x-udisks-auth" "x-gvfs-name=Secondary" ];
    };

  fileSystems."/swap" =
    { device = "/dev/disk/by-uuid/91c6f5c4-0ab0-45b4-b769-fa39d7958dbd";
      fsType = "btrfs";
      options = [ "subvol=swap" ];
    };

  swapDevices = [ { device = "/swap/swapfile"; } ];

  # Enables DHCP on each ethernet and wireless interface. In case of scripted networking
  # (the default) this is the recommended approach. When using systemd-networkd it's
  # still possible to use this option, but it's recommended to use it in conjunction
  # with explicit per-interface declarations with `networking.interfaces.<interface>.useDHCP`.
  networking.useDHCP = lib.mkDefault true;
  # networking.interfaces.wlp170s0.useDHCP = lib.mkDefault true;

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}

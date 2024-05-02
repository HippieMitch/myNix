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
    { device = "/dev/disk/by-uuid/26bb98e2-a4bf-4578-9314-d9dff1ad8fea";
      fsType = "btrfs";
      options = [ "subvol=root" "ssd" "noatime" "compress=zstd:1" ];
    };

  boot.initrd.luks.devices = {
      nixcrypt = {
        device = "/dev/disk/by-uuid/76164b4e-ac32-4693-8e6b-6968d2458a01";
        allowDiscards = true;
      };
    };

  fileSystems."/home" =
    { device = "/dev/disk/by-uuid/26bb98e2-a4bf-4578-9314-d9dff1ad8fea";
      fsType = "btrfs";
      options = [ "subvol=home" "ssd" "noatime" "compress=zstd:1" ];
    };

  fileSystems."/nix" =
    { device = "/dev/disk/by-uuid/26bb98e2-a4bf-4578-9314-d9dff1ad8fea";
      fsType = "btrfs";
      options = [ "subvol=nix" "ssd" "noatime" "compress=zstd:1" ];
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/0F9F-08B6";
      fsType = "vfat";
    };

  fileSystems."/mnt/secondary" =
    { device = "/dev/sda1";
      fsType = "ext4";
      options = [ "noatime" "nosuid" "nodev" "nofail" "x-gvfs-show" "x-udisks-auth" "x-gvfs-name=Secondary" ];
    };

  fileSystems."/swap" =
    { device = "/dev/disk/by-uuid/26bb98e2-a4bf-4578-9314-d9dff1ad8fea";
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

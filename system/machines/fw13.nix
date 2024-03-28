# Framework 13

{ lib, pkgs, ... }: 

{

  boot.kernelParams = [
    # Fixes a regression in s2idle, making it more power efficient than deep sleep
    "acpi_osi=\"!Windows 2020\""
    # For Power consumption
    "nvme.noacpi=1"
  ];

  # Module is not used for Framework EC but causes boot time error log.
  boot.blacklistedKernelModules = [ "cros-usbpd-charger" ];

  # Custom udev rules
  services.udev.extraRules = ''
    # Fix headphone noise when on powersave
    # https://community.frame.work/t/headphone-jack-intermittent-noise/5246/55
    SUBSYSTEM=="pci", ATTR{vendor}=="0x8086", ATTR{device}=="0xa0e0", ATTR{power/control}="on"
    # Ethernet expansion card support
    ACTION=="add", SUBSYSTEM=="usb", ATTR{idVendor}=="0bda", ATTR{idProduct}=="8156", ATTR{power/autosuspend}="20"
  '';

  # Needed for desktop environments to detect/manage display brightness
  hardware.sensor.iio.enable = lib.mkDefault true;

  # Mis-detected by nixos-generate-config
  hardware.acpilight.enable = lib.mkDefault true;

  # Fix TRRS headphones missing a mic
  boot.extraModprobeConfig = lib.mkIf (lib.versionOlder pkgs.linux.version "6.6.8") ''
    options snd-hda-intel model=dell-headset-multi
  '';

  # This adds a patched ectool, to interact with the Embedded Controller
  # Can be used to interact with leds from userspace, etc.
  # Not part of a nixos release yet, so package only gets added if it exists.
  environment.systemPackages = lib.optional (pkgs ? "fw-ectool") pkgs.fw-ectool;

  }

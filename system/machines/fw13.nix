# Framework 13

{ lib, pkgs, ... }: 

{

  boot = {

    kernelParams = [
    # Fixes a regression in s2idle, making it more power efficient than deep sleep
    "acpi_osi=\"!Windows 2020\""
    # For Power consumption
    "nvme.noacpi=1"
    # Use deep suspension by default
    "mem_sleep_default=deep"
    ];

    # Module is not used for Framework EC but causes boot time error log.
    blacklistedKernelModules = [ "cros-usbpd-charger" "cros_ec_lcps" "hid-sensor-hub" ];

    # Fix TRRS headphones missing mic
    extraModprobeConfig = lib.mkIf (lib.versionOlder pkgs.linux.version "6.6.8") ''
      options snd-hda-intel model=dell-headset-multi
      '';
  };

  # Custom udev rules
  services.udev.extraRules = ''
    # Fix headphone noise when on powersave
    SUBSYSTEM=="pci", ATTR{vendor}=="0x8086", ATTR{device}=="0xa0e0", ATTR{power/control}="on"
    
    # Ethernet expansion card support
    ACTION=="add", SUBSYSTEM=="usb", ATTR{idVendor}=="0bda", ATTR{idProduct}=="8156", ATTR{power/autosuspend}="20"

    # Power Management
    SUBSYSTEM!="pci", GOTO="power_runtime_rules_end"
    ACTION!="add", GOTO="power_runtime_rules_end"

    KERNEL=="????:??:??.?"
    PROGRAM="/run/current-system/sw/bin/sleep 0.1"
    
    ATTR{power/control}=="*", ATTR{power/control}="auto"
    
    LABEL="power_runtime_rules_end"
  '';

  hardware = {

    # Needed for desktop environments to detect/manage display brightness
    sensor.iio.enable = lib.mkDefault true;

    # Mis-detected by nixos-generate-config
    acpilight.enable = lib.mkDefault true;
  };

  # This adds a patched ectool, to interact with the Embedded Controller
  # Can be used to interact with leds from userspace, etc.
  # Not part of a nixos release yet, so package only gets added if it exists.
  environment.systemPackages = lib.optional (pkgs ? "fw-ectool") pkgs.fw-ectool;

  }

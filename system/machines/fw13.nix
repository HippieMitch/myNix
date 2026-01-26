# Framework 13

{ lib, pkgs, ... }: 

{

  boot = {

    kernelParams = [
    # For Power consumption
    "nvme.noacpi=1"

    # Use deep suspension by default
    "mem_sleep_default=deep"

    # Intel GPU configuration
    "i915.enable_guc=3"
    "i915.enable_fbc=1"
    "i915.enable_psr=1"
    "dev.i915.perf_stream_paranoid=0"

/*
    # Experimental Xe driver
    "i915.force_probe=!a7a0"
    "xe.force_probe=a7a0"
*/

    ];

    # Blacklisted kernel modules
    blacklistedKernelModules = [ 
      "cros-usbpd-charger"
      "iTCO_wdt" 
    ];
  };

  hardware = {

    # Intel Graphics
    graphics = {
      enable = true;
      extraPackages = with pkgs; [
        intel-compute-runtime  
        intel-media-driver
        intel-vaapi-driver  
        libva-vdpau-driver
        libvdpau-va-gl    
      ];
    };
    
    # Needed for desktop environments to detect/manage display brightness
    sensor.iio.enable = lib.mkDefault true;

    # Mis-detected by nixos-generate-config
    acpilight.enable = lib.mkDefault true;
  };

  # Enable Hybrid Video Playback Codec
  nixpkgs.config = {
    packageOverrides = pkgs: {
      intel-vaapi-driver = pkgs.intel-vaapi-driver.override { enableHybridCodec = true; };
    };
  };

  # Services
  services = {

    # Firmware Update Manager
    fwupd = {
      enable = true;
      extraRemotes = [ "lvfs-testing" ];
      uefiCapsuleSettings.DisableCapsuleUpdateOnDisk = true;
    };

    # Ethernet Expansion Card Support
    udev.extraRules = ''
      # Ethernet Expansion Card Support
      ACTION=="add", SUBSYSTEM=="usb", ATTR{idVendor}=="0bda", ATTR{idProduct}=="8156", ATTR{power/autosuspend}="20"

      # Fix Headphone Noise While on Powersave
      SUBSYSTEM=="pci", ATTR{vendor}=="0x8086", ATTR{device}=="0xa0e0", ATTR{power/control}="on"
      '';
  };

  # This adds a patched ectool, to interact with the Embedded Controller
  # Can be used to interact with leds from userspace, etc.
  # Not part of a nixos release yet, so package only gets added if it exists.
  environment.systemPackages = lib.optional (pkgs ? "fw-ectool") pkgs.fw-ectool;

  }

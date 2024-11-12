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
    # Intel GPU configuration
    "i915.enable_guc=3"
    "i915.enable_psr=1"
    ];

    # Module is not used for Framework EC but causes boot time error log.
    blacklistedKernelModules = [ "cros-usbpd-charger" "hid-sensor-hub" ];

  };

  hardware = {

    # Intel Graphics
    graphics = {
      enable = true;
      extraPackages = with pkgs; [
            intel-compute-runtime  
            intel-media-driver
            vaapiIntel  
            vaapiVdpau 
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
      vaapiIntel = pkgs.vaapiIntel.override { enableHybridCodec = true; };
    };
  };

  # Services
  services = {
    # X11
    xserver = {
      videoDrivers = [ "intel" ];
    };
    # Ethernet Expansion Card Support
    udev.extraRules = ''
      # Ethernet expansion card support
      ACTION=="add", SUBSYSTEM=="usb", ATTR{idVendor}=="0bda", ATTR{idProduct}=="8156", ATTR{power/autosuspend}="20"
      '';

  };

  # This adds a patched ectool, to interact with the Embedded Controller
  # Can be used to interact with leds from userspace, etc.
  # Not part of a nixos release yet, so package only gets added if it exists.
  environment.systemPackages = lib.optional (pkgs ? "fw-ectool") pkgs.fw-ectool;

  }

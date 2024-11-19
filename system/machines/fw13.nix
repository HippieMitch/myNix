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
    ];

    # Blacklisted kernel modules
    blacklistedKernelModules = [ "cros-usbpd-charger" "hid-sensor-hub" "iTCO_wdt" ];

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
      config = ''
        Section "Device"
          Identifier "Intel Graphics"
          Driver "modesetting"
        EndSection

        Option      "AccelMethod"  "sna"
        Option      "DRI"  "iris"
        Option      "TearFree"        "false"
        Option      "TripleBuffer"    "false"
        Option      "SwapbuffersWait" "false"
        '';
      exportConfiguration = true;
    };

    # Ethernet Expansion Card Support
    udev.extraRules = ''
      # Ethernet Expansion Card Support
      ACTION=="add", SUBSYSTEM=="usb", ATTR{idVendor}=="0bda", ATTR{idProduct}=="8156", ATTR{power/autosuspend}="20"

      # Fix Headphone Noise While on Powersave
      SUBSYSTEM=="pci", ATTR{vendor}=="0x8086", ATTR{device}=="0xa0e0", ATTR{power/control}="on";
      '';
  };

  # This adds a patched ectool, to interact with the Embedded Controller
  # Can be used to interact with leds from userspace, etc.
  # Not part of a nixos release yet, so package only gets added if it exists.
  environment.systemPackages = lib.optional (pkgs ? "fw-ectool") pkgs.fw-ectool;

  }

# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ inputs, lib, config, pkgs, ... }:

{
  imports = [ ./system-imports.nix ];

  # Bootloader.
  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
      timeout = 1;
    };

    # Kernel Parameters
    kernelParams = [ "quiet" "preempt=full" "split_lock_detect=off" "module_blacklist=hid_sensor_hub" "mem_sleep_default=deep" "nvme.noacpi=1" "resume=LABEL=NixOS" "resume_offset=533760" "i915.enable_guc=3" "i915.enable_psr=1" ];

    # Resume Device
    resumeDevice = "/dev/disk/by-uuid/bd7593e5-1681-4dae-9a4b-6fe5ba52e3d8";
  };

  # Sleep Options
  systemd.sleep.extraConfig = ''
    HibernateDelaySec=120m
    SuspendState=mem
    '';

  # Power Management
  powerManagement = {
    enable = true;
    powertop.enable = true;
  };

  # Daemons/Services
  services = {
    avahi.enable = false;
    flatpak.enable = true;
    fprintd.enable = true;
    fstrim.enable = true;
    fwupd.enable = true;
    gvfs.enable = true;
    irqbalance.enable = true;
    mullvad-vpn.enable = true;
    power-profiles-daemon.enable = false;
    printing.enable = false;
    thermald.enable = true;

    # Limit Journal Size
    journald.extraConfig = ''
      SystemMaxUse=50M
      '';

    # Lid Switch and Power Button Options
    logind = {
      lidSwitch = "suspend";
      extraConfig = ''
        HandlePowerKey=suspend
        IdleAction=suspend
        IdleActionSec=12m
      '';
    };

    # X11
    xserver = {
      enable = true;
      videoDrivers = [ "intel" ];
      xkb = {
        layout = "us";
        variant = "";
      };
    };
  };

  # Shutdown
  systemd.extraConfig = ''
    DefaultTimeoutStopSec=1s
  '';

  # Networking Options
  networking = {
    hostName = "spaceghost";
    # Enable Firewall
    firewall.enable = true;
   /* wireless.iwd = {
      enable = true;
      settings = {
        Settings = {
          AutoConnect = true;
        };
      };
    }; */
    networkmanager = {
      enable = true;
      wifi.backend = "wpa_supplicant";
  };
};

  # Set Time Zone
  time.timeZone = "America/New_York";

  # Set Locale
  i18n = {
    defaultLocale = "en_US.UTF-8";
    extraLocaleSettings = {
      LC_ADDRESS = "en_US.UTF-8";
      LC_IDENTIFICATION = "en_US.UTF-8";
      LC_MEASUREMENT = "en_US.UTF-8";
      LC_MONETARY = "en_US.UTF-8";
      LC_NAME = "en_US.UTF-8";
      LC_NUMERIC = "en_US.UTF-8";
      LC_PAPER = "en_US.UTF-8";
      LC_TELEPHONE = "en_US.UTF-8";
      LC_TIME = "en_US.UTF-8";
    };
  };

  # Mesa git
  # chaotic.mesa-git.enable = true;

  # Font Config
  fonts = {
    fontconfig = {
      subpixel = {
        rgba = "rgb";
        lcdfilter = "light";
        };
        antialias = true;
      };
    # Fonts in Flatpak
    fontDir.enable = true;
  };
  
  # Bluetooth
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
  };

  # Enable sound with pipewire.
  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    #jack.enable = true;
    #media-session.enable = true;
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.sean = {
    isNormalUser = true;
    description = "Sean";
    extraGroups = [ "networkmanager" "wheel" "libvirtd" ];
    packages = with pkgs; [
    ];
  };

  # Limit Sudo
  security.sudo.execWheelOnly = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Initial System State Version
  system.stateVersion = "24.05";

  # Accelerated Video Playback
  nixpkgs.config.packageOverrides = pkgs: {
    vaapiIntel = pkgs.vaapiIntel.override { enableHybridCodec = true; };
  };
  hardware.opengl = {
    enable = true;
    extraPackages = with pkgs; [
      intel-compute-runtime
      intel-media-driver
      vaapiIntel
      vaapiVdpau
      libvdpau-va-gl
    ];
  };

  # Nix
  nix = {
    # Nix Settings
    settings = {
      # Enable Flakes
      experimental-features = [ "nix-command" "flakes" ];
      # Store Optimisation
      auto-optimise-store = true;
    };

    # Garbage Collection
    gc = {
     automatic = true;
     dates = "weekly";
     options = "--delete-older-than 7d";
    };
  };
}

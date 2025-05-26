# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ pkgs, ... }:

{
  imports = [ ./system-imports.nix ];

  # Bootloader.
  boot = {

    loader = {
      systemd-boot = {
        enable = true;
        editor = false;
      };
      efi.canTouchEfiVariables = true;
      timeout = 0;
    };

    # Kernel Parameters
    kernelParams = [ 
      "preempt=full" 
      "split_lock_detect=off"
      "nowatchdog"
    ];

    };

  # ZRAM
  zramSwap.enable = true;

  # Systemd
  systemd = {
    # systemd-boot timeout
    extraConfig = ''
      DefaultTimeoutStopSec=1s
      '';
    # Suspend Options
   # sleep.extraConfig = ''
     # HibernateDelaySec=120m
     # '';
  };

  # Power Management
  powerManagement = {
    enable = true;
  };

  # Daemons/Services
  services = {
    avahi.enable = false;
    bpftune.enable = true;
    flatpak.enable = true;
    fstrim.enable = true;
    gvfs.enable = true;
    mullvad-vpn = {
      enable = true;
      package = pkgs.master.mullvad-vpn;
    };
    openssh.enable = false;
    power-profiles-daemon.enable = false;
    printing.enable = false;
    pulseaudio.enable = false;
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

    # Pipewire
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };

    # X11
    xserver = {
      enable = true;
      xkb = {
        layout = "us";
        variant = "";
      };
    };
  };

  # Networking Options
  networking = {
    hostName = "spaceghost";
    # Enable Firewall
    firewall.enable = true;
    wireless.iwd = {
      enable = true;
      settings = {
        Settings = {
          AutoConnect = true;
          UseDefaultInterface = true;
        };
      };
    };
    networkmanager = {
      enable = true;
      wifi.backend = "iwd";
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
        lcdfilter = "default";
        rgba = "rgb";
      };
      hinting = {
        enable = true;
        style = "slight";
      };
      antialias = true;
      useEmbeddedBitmaps = true;
      };
    # Fonts in Flatpak
    fontDir.enable = true;
  };

  # Hardware
  hardware = {
    # Enable Bluetooth
    bluetooth = {
      enable = true;

    # Accelerated Video Playback
    };
    graphics = {
      enable = true;
      extraPackages = with pkgs; [
          intel-compute-runtime
          intel-media-driver
          vaapiIntel
          vaapiVdpau
          libvdpau-va-gl
          vpl-gpu-rt
      ];
    };
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.sean = {
    isNormalUser = true;
    description = "Sean";
    extraGroups = [ "networkmanager" "wheel" "libvirtd" ];
  };

  # Security
  security = {
    sudo-rs = {
      enable = false;
      execWheelOnly = true;
    };

    /*
    doas = {
      enable = true;
      extraRules = [{
        users = [ "sean" ];
        keepEnv = true;
        persist = true;
      }];
    };

    */
    # Pipewire Setting
    rtkit.enable = true;
  };

  # Initial System State Version
  system.stateVersion = "24.05";

  # nixpkgs Allow Unfree
  nixpkgs.config = {
    allowUnfree = true;
    # Enable Hybrid Video Playback Codec
    packageOverrides = pkgs: {
      vaapiIntel = pkgs.vaapiIntel.override { enableHybridCodec = true; };
    };
  };

  # Nix
  nix = {
    # Use Lix
    # package = pkgs.lix;
    # Nix Settings
    settings = {
      # Enable Flakes
      experimental-features = [ "nix-command" "flakes" ];
      # Store Optimisation
      auto-optimise-store = true;
      substituters = [
        "https://nix-community.cachix.org"
        "https://cache.nixos.org/"
      ];
      trusted-public-keys = [
        "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
      ];
    };

    # Garbage Collection
    gc = {
     automatic = true;
     dates = "weekly";
     options = "--delete-older-than 7d";
    };
  };
}

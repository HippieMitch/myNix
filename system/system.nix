# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ pkgs, ... }:

{
  imports = [ ./system-imports.nix ];

  # Bootloader.
  boot = {

    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
      timeout = 0;
    };

    # Kernel Parameters
    kernelParams = [ 
      "preempt=full" 
      "split_lock_detect=off" 
      "resume=LABEL=NixOS" 
      "resume_offset=533760"
    ];

    # Resume Device
    resumeDevice = "/dev/disk/by-uuid/09582357-7ae5-4a4f-a5be-9ac28dc3fb76";

  };

  # Systemd
  systemd = {
    # systemd-boot timeout
    extraConfig = ''
      DefaultTimeoutStopSec=1s
      '';
    # Suspend Options
    sleep.extraConfig = ''
      HibernateDelaySec=120m
      '';
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
    fwupd.enable = true;
    gvfs.enable = true;
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
      lidSwitch = "suspend-then-hibernate";
      extraConfig = ''
        HandlePowerKey=suspend-then-hibernate
        IdleAction=suspend-then-hibernate
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
      videoDrivers = [ "intel" ];
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
      powerOnBoot = true;
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
        ];
      };
    # Disable PulseAudio
    pulseaudio.enable = false;
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.sean = {
    isNormalUser = true;
    description = "Sean";
    extraGroups = [ "networkmanager" "wheel" "libvirtd" ];
  };

  # Security
  security = {
    sudo.enable = false;
    doas = {
      enable = true;
      extraRules = [{
        users = [ "sean" ];
        keepEnv = true;
        persist = true;
      }];
    };
    # Pipewire Setting
    rtkit.enable = true;
  };

  # nixpkgs Config
  nixpkgs.config = {
    allowUnfree = true;
    # Enable Hybrid Video Playback Codec
    packageOverrides = pkgs: {
      vaapiIntel = pkgs.vaapiIntel.override { enableHybridCodec = true; };
    };
  };

  # Initial System State Version
  system.stateVersion = "24.05";

  # Nix
  nix = {
    # Use Lix
    package = pkgs.lix;
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

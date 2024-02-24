# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ inputs, lib, config, pkgs, ... }:

{
  imports = [ ./system-imports.nix ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.timeout = 1;

  # Kernel Parameters
  boot.kernelParams = [ "quiet" "preempt=full" "nosplit_lock_detect" "module_blacklist=hid_sensor_hub" "mem_sleep_default=deep" "nvme.noacpi=1" "resume=LABEL=NixOS" "resume_offset=533760" "i915.enable_guc=3" "i915.enable_psr=1" ];

  # Suspend and Hibernation Options
  boot.resumeDevice = "/dev/disk/by-uuid/bd7593e5-1681-4dae-9a4b-6fe5ba52e3d8";
  systemd.sleep.extraConfig = ''
    HibernateDelaySec=120m
    SuspendState=mem
    '';

  # Suspend and Hibernation Options
  services.logind = {
    lidSwitch = "suspend";
    extraConfig = ''
      HandlePowerKey=suspend
      IdleAction=suspend
      IdleActionSec=12m
    '';
  };

  # Power Management
  powerManagement.enable = true;
  powerManagement.powertop.enable = true;

  # Daemons
  services.mullvad-vpn.enable = true;
  services.gvfs.enable = true;
  services.irqbalance.enable = true;
  services.thermald.enable = true;
  services.fstrim.enable = true;
  services.power-profiles-daemon.enable = false;
  services.fwupd.enable = true;
  services.fprintd.enable = true;

  # Limit journal size
  services.journald.extraConfig = ''
    SystemMaxUse=50M
  '';

  # Shutdown
  systemd.extraConfig = ''
    DefaultTimeoutStopSec=1s
  '';

  networking = {
    hostName = "spaceghost";
 /*   wireless.iwd = {
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

  # Set your time zone.
  time.timeZone = "America/New_York";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
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

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Mesa git
  # chaotic.mesa-git.enable = true;

  # Font Config
  fonts.fontconfig = {
    subpixel = {
      rgba = "rgb";
      lcdfilter = "light";
    };
  antialias = true;
  };
  
  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # CUPS Printing Daemonn
  services.printing.enable = false;
  
  # Avahi
  services.avahi.enable = false;

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

  # Additional Video Settings
  services.xserver.videoDrivers = [ "intel" ]; # Wayland

  # Enable Flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

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

  # Firewall
  networking.firewall.enable = true;

  # Initial System State Version
  system.stateVersion = "24.05";

  # Use Flatpak
  services.flatpak.enable = true;

  # Fonts in Flatpak
  fonts.fontDir.enable = true;

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

  # Automatic /*Garbage*/ Collection
  nix.gc = {
     automatic = true;
     dates = "weekly";
     options = "--delete-older-than 7d";
        };

  # Nix Store Optimisation
  nix.settings.auto-optimise-store = true;
}

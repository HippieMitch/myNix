# System Packages

{ inputs, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [

  # Programs
    firefox_nightly
    mediawriter
    mpv
    mullvad-vpn
    virt-manager

  # Command Line Tools
    android-tools
    btop
    curl
    distrobox
    duf
    git
    mesa-demos
    nix-search-cli
    nvd
    tree
    wget

  # Multimedia
    ffmpeg_6-full

  ];

  # Remove X Server Packages
    services.xserver.excludePackages = with pkgs; [
      xterm
    ];

  # Enable Virt-Manager
    virtualisation.libvirtd.enable = true;
    programs.dconf.enable = true;
 
  # Enable Podman
    virtualisation = {
      podman = {
        enable = true;
        dockerCompat = true;
        defaultNetwork.settings = {
          dns_enabled = true;
        };
      };
    };

  # Enable cgroups v.2
    systemd.enableUnifiedCgroupHierarchy = true;

  # Enable Steam
    programs.steam.enable = true;

  # Enable ADB
    programs.adb.enable = true;

  # System Fonts
    fonts.packages = with pkgs; [
      dejavu_fonts
      jetbrains-mono
      nerdfonts
      noto-fonts
      open-sans
      ubuntu_font_family
      ];
    }

# System Packages

{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [

  # Programs
    brave
    firefox
    kdePackages.isoimagewriter
    mpv

  # Command Line Tools
    android-tools
    btop
    curl
    distrobox
    duf
    lm_sensors
    mesa-demos
    tree
    wget

  # Nix Tools
    nh
    nix-search-cli
    nvd

  # Multimedia Codecs
    ffmpeg_6-full

  ];

  # Remove X Server Packages
    services.xserver.excludePackages = with pkgs; [
      xterm
    ];

  # Enable Virt-Manager
    programs.virt-manager.enable = true;
 
  # Enable libvirt and Podman
    virtualisation = {
      # libvirt
      libvirtd.enable = true;
      # Podman
      podman = {
        enable = true;
        dockerCompat = true;
        defaultNetwork.settings = {
          dns_enabled = true;
        };
      };
    };

  # Enable Steam
    programs.steam = {
      enable = true;
      extraCompatPackages = with pkgs; [ proton-ge-bin ];
    };

  # Enable ADB
    programs.adb.enable = true;

  # System Fonts
    fonts.packages = with pkgs; [
      dejavu_fonts
      inter
      nerd-fonts.commit-mono
      nerd-fonts.fira-mono
      nerd-fonts.jetbrains-mono
      nerd-fonts.sauce-code-pro
      nerd-fonts.ubuntu-mono
      noto-fonts
      open-sans
      rubik
      ubuntu_font_family
      ];

   # Remove nano
    programs.nano.enable = false;

  }

# System Packages

{ pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [

  # Programs
    firefox
    kdePackages.isoimagewriter
    mpv
    mullvad-vpn

  # Command Line Tools
    android-tools
    btop
    curl
    distrobox
    duf
    git
    mesa-demos
    tree
    wget

  # Nix Tools
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
      (nerdfonts.override {
        fonts = [ "JetBrainsMono" "SourceCodePro" "UbuntuMono" ];
      })
      noto-fonts
      open-sans
      ubuntu_font_family
      ];
    }

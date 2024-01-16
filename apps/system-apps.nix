# System Applications

{ pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
   android-tools
   btop
   curl
   distrobox
   duf
   firefox_nightly
   fish
   git
   mediawriter
   mesa-demos
   mpv
   mullvad-vpn
   nvd
   tree
   wget
   virt-manager

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
   systemd.enableUnifiedCgroupHierarchy = true; # cgroups v.2

 # Enable Steam
  programs.steam.enable = true;

 # Set Fish Shell as Default
  programs.fish.enable = true;
  users.users.sean.shell = pkgs.fish;
  environment.shells = with pkgs; [ fish ];

 # Enable ADB
  programs.adb.enable = true;

 # System Fonts
  fonts.packages = with pkgs; [
    dejavu_fonts
    jetbrains-mono
    noto-fonts
    open-sans
    ubuntu_font_family
    ];
  }

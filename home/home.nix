{ inputs, lib, config, pkgs, ... }:

{
  imports = [ ./home-imports.nix ];

  # Set User Home dir
  home.username = "sean";
  home.homeDirectory = "/home/sean";

  # basic configuration of git, please change to your own
  programs.git = {
    enable = true;
    userName = "RazTheCat";
    userEmail = "razthecat@posteo.net";
  };

  # Setup Bash
    programs.bash = {
    enable = true;
    enableCompletion = true;
    # TODO add your custom bashrc here
    bashrcExtra = ''
    #  export PATH="$PATH:$HOME/bin:$HOME/.local/bin:$HOME/go/bin"
    '';
  };

  # Virt-Manager Setup
  dconf.settings = {
    "org/virt-manager/virt-manager/connections" = {
      autoconnect = ["qemu:///system"];
      uris = ["qemu:///system"];
    };
  };

  home.stateVersion = "23.11";

  # Let home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Hide nixpkgs release check for point release upgrades.
  home.enableNixpkgsReleaseCheck = false;
  }

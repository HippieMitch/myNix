{ config, ... }:

{
  imports = [ ./home-imports.nix ];

  # Set User Home dir
  home.username = "sean";
  home.homeDirectory = "/home/sean";
  home.file = {
    "Documents".source = config.lib.file.mkOutOfStoreSymlink "/mnt/secondary/Documents";
    "Downloads".source = config.lib.file.mkOutOfStoreSymlink "/mnt/secondary/Downloads";
    "Music".source = config.lib.file.mkOutOfStoreSymlink "/mnt/secondary/Music";
    "Pictures".source = config.lib.file.mkOutOfStoreSymlink "/mnt/secondary/Pictures";
    "Videos".source = config.lib.file.mkOutOfStoreSymlink "/mnt/secondary/Videos";
  };

  # basic configuration of git, please change to your own
  programs.git = {
    enable = true;
    userName = "HippieMitch";
    userEmail = "razthecat@posteo.net";
    extraConfig = {
      credential = {
        helper = "manager";
        "https://github.com".HippieMitch = "HippieMitch";
        credentialStore = "cache";
      };
    };

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

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
    };
  }

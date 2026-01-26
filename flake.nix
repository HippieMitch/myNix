{
  description = "This is my NixOS flake configuration.";

  inputs = {

    # Nixpkgs Unstable
      nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";

    # Nixpkgs Unstable Small
      nixpkgs-unstable-small.url = "github:NixOS/nixpkgs/nixos-unstable-small";

    # Nixpkgs Stable
      nixpkgs-stable.url = "github:NixOS/nixpkgs/24.05";

    # Nixpkgs Master
      nixpkgs-master.url = "github:NixOS/nixpkgs";

    # Current Branch
      nixpkgs.follows = "nixpkgs-unstable";

    # Home Manager
      home-manager = {
        url = "github:nix-community/home-manager";
        inputs.nixpkgs.follows = "nixpkgs";
      };

    # disko
      disko = {
        url = "github:nix-community/disko/latest";
        inputs.nixpkgs.follows = "nixpkgs";
      };
    
    # plasma-manager
      plasma-manager = {
        url = "github:nix-community/plasma-manager";
        inputs.nixpkgs.follows = "nixpkgs";
        inputs.home-manager.follows = "home-manager";
      };

    # kde2nix
    #  kde2nix.url = "github:nix-community/kde2nix";

    # Gnome 46
    #  nixpkgs-gnome-46.url = "github:NixOS/nixpkgs/gnome-46";

    # NixVim
      nixvim.url = "github:nix-community/nixvim";

    # Alacritty Themes
      alacritty-theme.url = "github:alexghr/alacritty-theme.nix";
  };

  outputs = { self,
              nixpkgs, 
              nixpkgs-unstable, 
              nixpkgs-unstable-small, 
              nixpkgs-stable, 
              nixpkgs-master, 
              home-manager, 
              disko,
              plasma-manager,
             # kde2nix,
              nixvim,
              alacritty-theme,
              ... } @ inputs:

      let
      inherit (self) outputs;
      system = "x86_64-linux";
      overlay-unstable = final: prev: {
         unstable = import nixpkgs-unstable {
           inherit system;
           config.allowUnfree = true;
         };
      };
      overlay-unstable-small = final: prev: {
         unstable-small = import nixpkgs-unstable-small {
           inherit system;
           config.allowUnfree = true;
         };
      };
      overlay-stable = final: prev: {
         stable = import nixpkgs-stable {
           inherit system;
           config.allowUnfree = true;
         };
      };
      overlay-master = final: prev: {
         master = import nixpkgs-master {
           inherit system;
           config.allowUnfree = true;
         };
      };

    in {
      nixosConfigurations = {
        spaceghost = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          specialArgs = {inherit inputs outputs;};
          modules = [
            ({ ... }: { nixpkgs.overlays = [
              overlay-unstable 
              overlay-unstable-small 
              overlay-stable 
              overlay-master
            ]; })

            # System Configuration File
            ./system/system.nix
          
            # Set $NIX_PATH
            { nix.nixPath = [ "nixpkgs=${inputs.nixpkgs}" ]; }

            # Home Manager Module
            home-manager.nixosModules.home-manager
            {
              home-manager = {
                useGlobalPkgs = true;
                useUserPackages = true;
                extraSpecialArgs = {inherit inputs outputs;};
                users.sean = import ./home/home.nix;
                # plasma-manager
                sharedModules = [ plasma-manager.homeModules.plasma-manager ];
              };
            }

            # disko Module
            disko.nixosModules.disko

            # kde2nix Module
            # kde2nix.nixosModules.default

            # NixVim Module
            nixvim.nixosModules.nixvim

            # Alacritty Themes Module
            ({ config, pkgs, ...}: {
              nixpkgs.overlays = [ alacritty-theme.overlays.default ];
            })

          ];
        };
      };
    };
}

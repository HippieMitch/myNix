{
  description = "ghostfish";

  inputs = {

    # Nixpkgs Unstable
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";

    # Nixpkgs Unstable Small
    nixpkgs-unstable-small.url = "github:NixOS/nixpkgs/nixos-unstable-small";

    # Nixpkgs Stable
    nixpkgs-stable.url = "github:NixOS/nixpkgs/23.11";

    # Nixpkgs Master
    nixpkgs-master.url = "github:NixOS/nixpkgs";

    nixpkgs.follows = "nixpkgs-unstable-small"; 

    # Home Manager
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Chaotic-CX
    chaotic.url = "github:chaotic-cx/nyx/nyxpkgs-unstable";

    # kde2nix
    kde2nix.url = "github:nix-community/kde2nix";

  };

  outputs = { self, 
              nixpkgs, 
              nixpkgs-unstable, 
              nixpkgs-unstable-small, 
              nixpkgs-stable, 
              nixpkgs-master, 
              home-manager, 
              chaotic,
              kde2nix,
              ... } @ inputs:
    let
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
      nixosConfigurations."spaceghost" = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ({ config, pkgs, ... }: { nixpkgs.overlays = [
            overlay-unstable 
            overlay-unstable-small 
            overlay-stable 
            overlay-master
           ]; })

          # System Configuration File
          ./system/system.nix
          
          # Home Manager
          home-manager.nixosModules.home-manager
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              extraSpecialArgs = {inherit inputs;};
              users.sean = import ./home/home.nix;
            };
          }

          # Chaotic-CX Module
          chaotic.nixosModules.default

          # kde2nix Module
          kde2nix.nixosModules.default
        ];
      };
    };
}

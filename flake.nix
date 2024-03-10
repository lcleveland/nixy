{
  description = "My NixOS flake";

  inputs = {
    home-manager = {
      url = "github:nix-community/home-manager/release-23.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixos-23.11";
    };
  };

  outputs = inputs@{ self, nixpkgs, config, ... }:
    let
      # All config options to should be here
      system = "x86_64-linux";
      hostname = "nixos";
    in
    rec {
      nixosConfigurations = {
        networking.hostName = hostname;
        plasma_sddm = nixpkgs.lib.nixosSystem {
          inherit system;
          specialArgs = inputs;
          modules = [
            ./system.nix
            ./user.nix
            ./system/window_manager/kde_plasma.nix
            ./system/login_manager/sddm.nix
          ];
        };
      };
    };
}

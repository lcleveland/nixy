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

  outputs = inputs@{ self, nixpkgs, ... }:
    let
      # All config options to should be here
      system = "x86_64-linux";
    in
    rec {
      nixosConfigurations = {
        default = nixpkgs.lib.nixosSystem {
          inherit system;
          specialArgs = inputs;
          modules = [
            ./system/core.nix
          ];
        };
      };
    };
}

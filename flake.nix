{
  description = "My NixOS flake";

  inputs = {
    home-manager = {
      url = "github:nix-community/home-manager/release-23.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixos-unstable";
    };
  };

  outputs = inputs@{ self, nixpkgs, ... }:
    let
      system = "x86_64-linux";
    in
    rec {
      nixosConfigurations = {
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

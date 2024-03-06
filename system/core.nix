{ ... }:
{
  imports = [
    /etc/nixos/hardware-configuration.nix
    ./core/app.nix
    ./core/boot.nix
    ./core/locale.nix
    ./core/network.nix
    ./core/sound.nix
    ./core/state_version.nix
    ./core/time.nix
  ];
}

{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    git
    neovim
    blueman
    bluez
  ];
}

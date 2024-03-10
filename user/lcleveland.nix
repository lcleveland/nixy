{ ... }:
{
  users.users.lcleveland = {
    isNormalUser = true;
    description = "Lyle Cleveland";
    extraGroups = [ "wheel" "networkmanager" "libvirtd" ];
  };

  home-manager.users.lcleveland = {
    home.enableNixpkgsReleaseCheck = false;
    home.stateVersion = "23.11";
    imports = [
      ./lcleveland/config.nix
      ./lcleveland/app.nix
    ];
  };
}

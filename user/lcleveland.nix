{ ... }:
{
  user.users.lcleveland = {
    isNormalUser = true;
    description = "Lyle Cleveland";
    extraGroups = [ "wheel" "networkmanager" ];
  };

  home-manager.users.lcleveland = {
    home.stateVersion = "23.11";
    imports = [
      ./lcleveland/config.nix
      ./lcleveland/app.nix
    ];
  };
}

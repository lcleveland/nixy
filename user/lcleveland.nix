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
      ./app/librewolf.nix
      ./lcleveland/config/git.nix
    ];
  };
}

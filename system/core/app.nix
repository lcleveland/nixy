{ auto-cpufreq, pkgs, ... }:
{
  imports = [
    auto-cpufreq.nixosModules.default
  ];
  environment.systemPackages = with pkgs; [
    git
    neovim
  ];
  programs.auto-cpufreq.enable = true;
}

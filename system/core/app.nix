{ auto-cpufreq, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    git
    neovim
    auto-cpufreq.nixosModules.default
  ];
  programs.auto-cpufreq.enable = true;
}

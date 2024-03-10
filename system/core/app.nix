{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    git
    neovim
    auto-cpufreq
  ];
  services.auto-cpufreq.enable = true;
}

{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    git
    neovim
  ];
  services.auto-cpufreq.enable = true;
}

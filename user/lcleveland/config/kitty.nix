{ ... }:
{
  programs.kitty.shellIntegration.enableFishIntegration = true;
  programs.kitty.settings = {
    shell = fish;
  };
}

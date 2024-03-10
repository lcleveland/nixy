{ ... }:
{
  programs.kitty.shellIntegration.enableFishIntegration = true;
  programs.kitty.environment = {
    "SHELL" = "fish";
  };
}

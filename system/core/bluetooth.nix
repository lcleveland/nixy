{ pkgs, ... }:
{
  services.blueman.enable = true;
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
    settings = {
      Policy.AutoEnable = true;
      General = {
        Enable = "Source,Sink,Media,Socket";
      };
    };
  };
}

{ pkgs, ... }:

{
  security.rtkit.enable = true;

  # hardware.enableAllFirmware = true;

  services.pulseaudio = {
    enable = true;
    package = pkgs.pulseaudioFull;
  };

  services.pipewire.enable = false;

  environment.systemPackages = with pkgs; [
    alsa-utils
    pavucontrol
    pulseaudioFull
  ];
}

{ inputs, pkgs, ... }:

{
  programs.niri.enable = true;

  programs.hyprland = {
    enable = true;

    withUWSM = true;
    xwayland.enable = true;
  };

  programs.noctalia-greeter = {
    enable = true;

    package = inputs.noctalia-greeter.packages.${pkgs.stdenv.hostPlatform.system}.default;

    settings.session.default = "niri";
  };
}

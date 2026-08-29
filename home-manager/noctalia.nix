{ inputs, pkgs, ... }:

{
  programs.noctalia = {
    enable = true;
    package = inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default;
    systemd.enable = true;

    settings = {
      theme.mode = "dark";
    };
  };
}

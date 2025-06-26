{ pkgs, lib, config, ... }:

{
  options.thunar.enable = lib.mkEnableOption "enables thunar";

  config = lib.mkIf config.thunar.enable {
    home.packages = [ pkgs.xfce.thunar ];
  };
}

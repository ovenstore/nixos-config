{ pkgs, lib, config, ... }:

{
  options.obsidian.enable = lib.mkEnableOption "enables obsidian";

  config = lib.mkIf config.obsidian.enable {
    home.packages = [ pkgs.obsidian ];
  };
}

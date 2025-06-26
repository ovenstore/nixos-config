{ pkgs, lib, config, ... }:

{
  options.temporary.enable = lib.mkEnableOption "enables temporary";

  config = lib.mkIf config.temporary.enable {
    # Configuration here
  };
}

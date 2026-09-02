{ lib, pkgs, username, ... }:

let
  scriptDir = ./scripts;

  scriptPackages = lib.mapAttrsToList
    (name: _:
      pkgs.writeShellScriptBin
        name
        (builtins.readFile "${scriptDir}/${name}")
    )
    (lib.filterAttrs
      (_: type: type == "regular")
      (builtins.readDir scriptDir));
in
{
  hjem.users.${username}.packages = scriptPackages;
}

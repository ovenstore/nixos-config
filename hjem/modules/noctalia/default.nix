{ inputs, lib, pkgs, username, ... }:

let
  noctaliaPackage = inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default;
in
{
  hjem.users.${username} = {
    packages = [ noctaliaPackage ];
    files.".config/noctalia/config.toml".source = ./config.toml;
  };

  systemd.user.services.noctalia = {
    description = "Noctalia - A lightweight Wayland shell and bar";
    documentation = [ "https://docs.noctalia.dev/noctalia/" ];
    partOf = [ "graphical-session.target" ];
    after = [ "graphical-session.target" ];
    wantedBy = [ "graphical-session.target" ];
    serviceConfig = {
      ExecStart = "${lib.getExe noctaliaPackage}";
      Restart = "on-failure";
    };
  };
}

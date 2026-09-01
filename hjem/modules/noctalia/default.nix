# { inputs, lib, pkgs, username, ... }:

# let
#   noctaliaPackage = inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default;
# in {
#   hjem.users.${username} = {
#     packages = [ noctaliaPackage ];
#     files.".config/noctalia/config.toml".source = ./config.toml;
#   };

#   systemd.user.services.noctalia = {
#     description = "Noctalia - A lightweight Wayland shell and bar";
#     documentation = [ "https://docs.noctalia.dev/noctalia/" ];
#     partOf = [ "graphical-session.target" ];
#     after = [ "graphical-session.target" ];
#     wantedBy = [ "graphical-session.target" ];
#     serviceConfig = {
#       ExecStart = "${lib.getExe noctaliaPackage}";
#       Restart = "on-failure";
#     };
#   };
# }

{ inputs, lib, pkgs, username, ... }:

let
  noctaliaPackage =
    inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default;

  updateNoctalia = pkgs.writeShellScriptBin "update-noctalia" ''
    set -euo pipefail

    NOCTALIA_DIR="$HOME/nixos-config/hjem/modules/noctalia"
    NOCTALIA_STATE="$HOME/.local/state/noctalia/settings.toml"

    echo "Exporting Noctalia configuration..."

    ${lib.getExe noctaliaPackage} config export > "$NOCTALIA_DIR/config.toml"

    echo "Removing Noctalia state..."

    rm -f "$NOCTALIA_STATE"

    echo "Noctalia configuration updated."
  '';
in
{
  hjem.users.${username} = {
    packages = [
      noctaliaPackage
      updateNoctalia
    ];

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

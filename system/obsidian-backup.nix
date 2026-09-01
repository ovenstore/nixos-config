{ pkgs, ... }:

let
  obsidian-backup = pkgs.writeShellScriptBin "obsidian-backup" ''
    set -euo pipefail

    OBSIDIAN_DIR="$HOME/Obsidian"

    cd "$OBSIDIAN_DIR"

    if ! git diff --quiet || ! git diff --cached --quiet; then
      timestamp="$(date +"%Y-%m-%d %H:%M:%S")"

      git add -A
      git commit -m "Auto backup: $timestamp"
      git push
    else
      echo "No changes to commit."
    fi
  '';
in
{
  systemd.user.services.obsidian-backup = {
    description = "Sync Obsidian Vault with Git";

    path = with pkgs; [ git openssh ];

    serviceConfig = {
      Type = "oneshot";
      ExecStart = "${obsidian-backup}/bin/obsidian-backup";
      WorkingDirectory = "%h/Obsidian";
    };
  };

  systemd.user.timers.obsidian-backup = {
    description = "Run Git Sync for Obsidian Vault";

    timerConfig = {
      OnCalendar = "hourly";
      Persistent = true;
    };

    wantedBy = [ "timers.target" ];
  };
}


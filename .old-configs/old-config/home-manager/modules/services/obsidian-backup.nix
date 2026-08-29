{ pkgs, ... }:

let
  obsidian-backup = pkgs.writeShellScriptBin "obsidian-backup" ''
    #!/usr/bin/env bash
    set -euo pipefail

    OBSIDIAN_DIR="$HOME/Obsidian"

    cd "$OBSIDIAN_DIR"

    # Only commit if there are changes
    if ! git diff --quiet || ! git diff --cached --quiet; then
      timestamp="$(date +"%Y-%m-%d %H:%M:%S")"
      git add -A
      git commit -m "Auto backup: $timestamp"
      git push
    else
      echo "No changes to commit."
    fi
  '';
in {
  home.packages = [ obsidian-backup ];

  systemd.user.services.obsidian-backup = {
    Unit = {
      Description = "Sync Obsidian Vault with Git";
    };

    Service = {
      Type = "oneshot";
      ExecStart = "${obsidian-backup}/bin/obsidian-backup";
      WorkingDirectory = "%h/Obsidian";
    };

    Install = {
      WantedBy = [ "default.target" ];
    };
  };

  systemd.user.timers.obsidian-backup = {
    Unit = {
      Description = "Run Git Sync for Obsidian Vault";
    };

    Timer = {
      OnCalendar = "hourly";
      Persistent = true;
    };

    Install = {
      WantedBy = [ "timers.target" ];
    };
  };

}

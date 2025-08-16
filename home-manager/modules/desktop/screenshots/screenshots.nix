{ pkgs, ... }:

let
  full-shot = pkgs.writeShellScriptBin "full-shot" ''
    SAVE_DIR="$HOME/Pictures/Screenshots"
    mkdir -p "$SAVE_DIR"

    FILE="$SAVE_DIR/screenshot_$(date +%Y-%m-%d_%H-%M-%S).png"

    grim - | swappy -f - -o "$FILE"
  '';

  area-shot = pkgs.writeShellScriptBin "area-shot" ''
    SAVE_DIR="$HOME/Pictures/Screenshots"
    mkdir -p "$SAVE_DIR"

    FILE="$SAVE_DIR/screenshot_$(date +%Y-%m-%d_%H-%M-%S).png"

    grim -g "$(slurp)" - | swappy -f - -o "$FILE"
  '';
in {
  home.packages = [
    full-shot
    area-shot

    pkgs.grim
    pkgs.slurp
    pkgs.swappy
    pkgs.wl-clipboard
  ];
}

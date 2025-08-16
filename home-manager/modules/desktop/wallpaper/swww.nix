{ pkgs, theme, ... }:

let 
  set-wall = pkgs.writeShellScriptBin "set-wall" ''
    swww img ~/.dotfiles/wallpapers/${theme.wallpaper} -t none
  '';
in {
  home.packages = [ set-wall ];
}

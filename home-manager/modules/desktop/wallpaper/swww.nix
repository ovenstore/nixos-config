{ pkgs, theme, ... }:

let 
  set-wall = pkgs.writeShellScriptBin "set-wall" ''
    swww img ~/.dotfiles/wallpapers/${theme.wallpaper}
  '';
in {
  home.packages = [ set-wall ];
}

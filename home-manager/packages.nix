{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # Development tools
    gcc
    libgcc

    # Chess
    chess-tui

    # Miscellaneous Apps
    zoom-us
  ];
}

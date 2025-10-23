{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # Development tools
    gcc
    libgcc

    # Chess
    chess-tui
    stockfish

    # Miscellaneous Apps
    zoom-us
    swww
    tor-browser
  ];
}

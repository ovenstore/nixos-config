{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # Terminal utilities
    curl
    dua
    fd
    ffmpeg
    file
    ouch
    ripgrep
    wget
    zoxide
  ];
}

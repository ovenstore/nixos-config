{ pkgs, ... }:

{
  home.packages = with pkgs; [
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

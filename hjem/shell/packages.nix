{ pkgs, username, ... }:

{
  hjem.users.${username}.packages = with pkgs; [
    atuin
    bat
    btop
    curl
    dua
    duckdb
    eza
    fastfetch
    fd
    ffmpeg
    file
    gcc
    helix
    imagemagick
    libgcc
    mediainfo
    ouch
    p7zip
    ripgrep
    starship
    vim
    wget
    yazi
    zoxide
  ];
}

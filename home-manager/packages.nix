{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # Miscellaneous Apps
    dconf-editor
    gthumb
    swww
    tor-browser
    zoom-us

    # Terminal Utilities
    curl
    dua
    fd
    ffmpeg
    file
    gcc
    libgcc
    ouch
    p7zip
    ripgrep
    wget
    zoxide
  ];
}

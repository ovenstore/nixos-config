{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # Miscellaneous Apps
    dconf-editor
    gthumb
    tor-browser
    zoom-us
    obsidian
    xfce.thunar

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

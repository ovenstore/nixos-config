{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # Miscellaneous Apps
    dconf-editor
    gthumb
    obsidian
    tor-browser
    xfce.thunar
    yt-dlp
    zathura
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

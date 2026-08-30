{ pkgs, username, ... }:

{
  hjem.users.${username}.packages = with pkgs; [
    # Terminal utilities
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
    git
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

    # Miscellaneous apps
    code-cursor
    firefox
    ghostty
    gthumb
    obsidian
    tor-browser
    thunar
    zathura
    zoom-us
  ];
}

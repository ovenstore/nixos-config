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

    # Web App Class Packages
    # mongodb
    nodejs

    # Computer Networks Class Packages
    ciscoPacketTracer8 # needs to be added to nix store manually, can be downloaded from https://www.netacad.com/resources/lab/cisco-packet-tracer-resources
    gns3-gui
    gns3-server
    wireshark
  ];
}

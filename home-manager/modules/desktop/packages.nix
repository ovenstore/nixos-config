{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # this stuff is required for the window manager
    libnotify
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland
  ];
}

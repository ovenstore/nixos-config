{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # this stuff is required for hyprland window manager
    libnotify
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland
    playerctl
    brightnessctl
  ];
}

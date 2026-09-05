{ pkgs, username, ... }:

{
  hjem.users.${username}.packages = with pkgs; [
    # Hyprland session helpers
    hyprland-protocols
    libnotify
    playerctl
  ];
}

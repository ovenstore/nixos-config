{ pkgs, username, ... }:

{
  hjem.users.${username}.packages = with pkgs; [
    # Essential Desktop Apps
    brave
    ghostty
    obsidian
    nautilus
    keepassxc
    vscode

    # Extra Desktop Apps
    code-cursor
    gthumb
    telegram-desktop
    tor-browser
    unityhub

    # Niri support
    xwayland-satellite
  ];
}

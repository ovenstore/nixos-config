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
    discord
    googleearth-pro
    gthumb
    telegram-desktop
    tor-browser

    zap # funsies

    # Unity
    unityhub
    dotnet-sdk_9

    # Niri support
    xwayland-satellite
  ];
}

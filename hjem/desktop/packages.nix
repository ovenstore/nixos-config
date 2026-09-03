{ pkgs, username, ... }:

{
  hjem.users.${username}.packages = with pkgs; [
    # Essentials
    brave
    ghostty
    obsidian
    nautilus
    vscode
    keepassxc

    # Extra
    code-cursor
    gthumb
    tor-browser
    zoom-us

    # Unity
    unityhub
    dotnet-sdk_9
  ];
}

{ pkgs, username, ... }:

{
  hjem.users.${username}.packages = with pkgs; [
    # Essentials
    firefox
    ghostty
    obsidian
    nautilus
    vscode

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

{ pkgs, username, ... }:

{
  hjem.users.${username}.packages = with pkgs; [
    # Essentials
    brave
    ghostty
    obsidian
    nautilus
    keepassxc
    xwayland-satellite

    # Extra
    code-cursor
    gthumb
    telegram-desktop
    tor-browser
  ];
}

{ pkgs, username, ... }:

{
  hjem.users.${username}.packages = with pkgs; [
    adw-gtk3
    papirus-icon-theme
    nwg-look
  ];
}

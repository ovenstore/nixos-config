{ pkgs, username, ... }:

{
  hjem.users.${username}.packages = with pkgs; [
    # GTK theming
    adw-gtk3
    bibata-cursors
    papirus-icon-theme
    nwg-look
  ];
}

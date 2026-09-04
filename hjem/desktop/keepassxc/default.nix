{ username, ... }:

{
  hjem.users.${username}.files.".config/keepassxc/keepassxc.ini".source = ./keepassxc.ini;
}

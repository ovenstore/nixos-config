{ username, ... }:

{
  hjem.users.${username}.files.".config/btop/btop.conf".source = ./btop.conf;
}

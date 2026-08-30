{ username, ... }:

{
  hjem.users.${username}.files.".bashrc".source = ./bashrc;
}

{ username, ... }:

{
  hjem.users.${username}.files.".gitconfig".source = ./gitconfig;
}

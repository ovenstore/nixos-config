{ username, ... }:

{
  hjem.users.${username}.files.".config/ghostty/config".source = ./config;
}

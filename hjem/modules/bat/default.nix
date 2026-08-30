{ username, ... }:

{
  hjem.users.${username}.files.".config/bat/config".source = ./config;
}

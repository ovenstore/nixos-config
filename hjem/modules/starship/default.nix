{ username, ... }:

{
  hjem.users.${username}.files.".config/starship.toml".source = ./starship.toml;
}

{ username, ... }:

{
  hjem.users.${username}.files.".config/helix/config.toml".source = ./config.toml;
}

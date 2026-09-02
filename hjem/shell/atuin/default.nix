{ username, ... }:

{
  hjem.users.${username}.files.".config/atuin/config.toml".source = ./config.toml;
}

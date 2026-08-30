{ username, ... }:

{
  hjem.users.${username}.files.".config/niri/config.kdl".source = ./config.kdl;
}

{ username, ... }:

{
  hjem.users.${username}.files = {
    ".config/fastfetch/config.json".source = ./config.json;
    ".config/fastfetch/logos/nix.txt".source = ./logos/nix.txt;
  };
}

{ username, ... }:

{
  imports = [ ./packages.nix ];

  hjem.users.${username}.files.".config/hypr/hyprland.lua".source = ./hyprland.lua;
}

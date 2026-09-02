{ username, ... }:

{
  imports = [ ./packages.nix ];
  
  hjem.users.${username}.files.".config/gtk-3.0/settings.ini".source = ./settings.ini;
}

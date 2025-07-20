{ pkgs, ... }:

{
  name = "gruvbox";

  colors = rec {
    prior1    = red;
    prior2    = blue;
    prior3    = yellow;
    prior4    = green;
    prior5    = orange;
    prior6    = purple;

    border1    = prior1;
    border2    = bg2;

    bg1 = "282828";
    bg2 = "3c3836";
    bg3 = "504945";
    bg4 = "665c54";

    fg1 = "fbf1c7";
    fg2 = "ebdbb2";

    red       = "cc241d";
    orange    = "d65d0e";
    yellow    = "d79921";
    green     = "b8bb26";
    cyan      = "8ec07c";
    blue      = "458588";
    purple    = "d3869b";

    white     = "ffffff";
    black     = bg4;
  };

  border-radius = 0;
  border-width  = 2;
  inner-gaps    = 0;
  outer-gaps    = 0;

  do-shadows = false;
  do-animations = false;
  do-blur = false;

  do-dim = true;
  dim-strength = 0.1;

  active-opacity    = 1.0;
  inactive-opacity  = 1.0;

  fonts = {
    code = {
      name = "Fira Mono";
      package = "fira-mono";
    };

    normal = {
      name = "Fira Mono";
      package = "fira-mono";
    };
  };

  gtk = {
    name = "gruvbox-dark-gtk"; # I think this name may be wrong but idrk
    package = "gruvbox-dark-gtk";
  };

  cursor = {
    name = "DMZ-Black";
    package = "vanilla-dmz";
    size = 24;
  };

  iconTheme = {
    name = "Gruvbox-Dark";
    package = "gruvbox-dark-icons-gtk";
  };

  wallpaper = "gruv-city.png";
}
  



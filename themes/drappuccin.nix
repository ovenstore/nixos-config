{ pkgs, ... }:

{
  name = "drappuccin";

  colors = rec {
    prior1    = purple;
    prior2    = blue;
    prior3    = green;
    prior4    = yellow;
    prior5    = red;
    prior6    = cyan;

    border1    = prior1;
    border2    = bg2;

    bg1 = "11121d";
    bg2 = "212234";
    bg3 = "3b4261";
    bg4 = "565f89";

    fg1 = "ffffff";
    fg2 = "c0caf5";

    red       = "ff5555";
    orange    = "ffb86c";
    yellow    = "f1fa8c";
    green     = "50fa7b";
    cyan      = "8be9fd";
    blue      = "80bfff";
    purple    = "bd93f9";

    white     = "ffffff";
    black     = bg2;
  };

  # border-radius = 0;
  # border-width  = 2;
  # inner-gaps    = 5;
  # outer-gaps    = 10;

  # do-shadows = false;
  # do-animations = true;
  # do-blur = true;

  # do-dim = false;
  # dim-strength = 0.1;

  # active-opacity    = 1.0;
  # inactive-opacity  = 1.0;

  fonts = {
    code = {
      name = "Fira Mono";
      vs-name = "FiraMono Nerd Font";
      package = "fira-mono";
    };

    normal = {
      name = "Fira Mono";
      package = "fira-mono";
    };
  };

  gtk = {
    name = "Tokyonight-Dark"; 
    package = "tokyonight-gtk-theme";
  };

  # relog may be necessary to see changes
  cursor = {
    name = "Bibata-Original-Classic";
    package = "bibata-cursors";
    size = "24";
  };

  iconTheme = {
    name = "Dracula";
    package = "dracula-icon-theme";
  };

  wallpaper = "mocha.png";
}


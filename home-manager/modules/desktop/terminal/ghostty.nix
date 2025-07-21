{ pkgs, theme, ... }:

{
  programs.ghostty = {
    enable = true;

    settings = {
      background = theme.colors.bg1;
      foreground = theme.colors.fg1;

      window-decoration = false;
      window-padding-x = 10;
      window-padding-y = 10;

      resize-overlay = "never";

      clipboard-paste-protection = false;
      clipboard-read = "allow";
      clipboard-trim-trailing-spaces = true;

      confirm-close-surface = false;

      font-family = theme.fonts.code.name;
      font-size = 12;

      palette = with theme.colors; [
        "0=${black}"
        "8=${black}"

        "1=${red}"
        "9=${red}"

        "2=${green}"
        "10=${green}"

        "3=${yellow}"
        "11=${yellow}"

        "4=${blue}"
        "12=${blue}"

        "5=${purple}"
        "13=${purple}"

        "6=${cyan}"
        "14=${cyan}"

        "7=${white}"
        "15=${white}"
      ];
    };
  };
}



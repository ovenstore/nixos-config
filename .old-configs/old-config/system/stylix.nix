{ config, pkgs, theme, ... }:

{
  stylix = {
    enable = true;

    image = ../themes/wallpapers/${theme.wallpaper};

    base16Scheme = ../themes/color-schemes/${theme.name}.yaml;

    polarity = "dark";

    fonts = {
      sansSerif = config.stylix.fonts.serif;
      emoji = config.stylix.fonts.monospace;

      monospace = {
        package = pkgs.${theme.fonts.code.package};
        name = theme.fonts.code.name;
      };

      serif = {
        package = pkgs.${theme.fonts.normal.package};
        name = theme.fonts.normal.name;
      };
    };
  };
}

{ theme, ... }:

{
  services.hyprpaper = {
    enable = false;

    settings = {
      preload = [
        "../../../../wallpapers/${theme.wallpaper}"
      ];

      wallpaper = [
        ",../../../../wallpapers/${theme.wallpaper}"
      ];
    };
  };
}

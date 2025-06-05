{ pkgs, inputs, settings, ... }:

{
  home.packages = with pkgs; [
    fira-mono
    noto-fonts-emoji
    vanilla-dmz
    papirus-icon-theme
  ];

  stylix = {
    enable = true;

    polarity = "dark";

    base16Scheme = ./themes/${settings.theme}.yaml;

    image = ./wallpapers/waterfall.png;

    targets = {
      dunst.enable = false;
      firefox.enable = false;
      fuzzel.enable = false;
      hyprlock.enable = false;
      hyprland.enable = false;
      waybar.enable = false;
    };

    fonts = {
      monospace = {
        name = "Fira Mono";
        package = pkgs.nerd-fonts.fira-mono;
      };

      sansSerif = {
        name = "Fira Mono";
        package = pkgs.nerd-fonts.fira-mono;
      };

      serif = {
        name = "Fira Mono";
        package = pkgs.nerd-fonts.fira-mono;
      };

      emoji = {
        name = "Noto Color Emoji";
        package = pkgs.noto-fonts-color-emoji;
      };
    };

    cursor = {
      name = "DMZ-Black";
      package = pkgs.vanilla-dmz;
      size = 24;
    };

    iconTheme = {
      enable = true;
      package = pkgs.papirus-icon-theme;
      dark = "Papirus-Dark";
      light = "Papirus-light";
    };
  };
}

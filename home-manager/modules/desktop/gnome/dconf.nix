{ theme, username, ... }:

{
  dconf.settings = {
    # set system fonts
    "org/gnome/desktop/interface" = {
      monospace-font-name = theme.fonts.code.name;
      document-font-name = theme.fonts.normal.name;
    };

    # hint monitors to use higher resulution fonts
    "org/gnome/desktop/interface" = {
      font-hinting = "full";
      font-antialiasing = "rgba";
    };

    # disable auto-suspend
    "org/gnome/settings-daemon/plugins/power" = {
      power-button-action = "interactive";
      sleep-inactive-ac-timeout = 0;
      sleep-inactive-ac-type = "nothing";
      sleep-inactive-battery-type = "nothing";
    };

    # disable mouse acceleration and configure speed
    "org/gnome/desktop/peripherals/mouse" = {
      accel-profile = "flat";
      speed = 0.5;
    };

    # configure wallpapers
    "org/gnome/desktop/background" = {
      picture-uri = "file:///home/${username}/.dotfiles/themes/wallpapers/${theme.wallpaper}";
      picture-uri-dark = "file:///home/${username}/.dotfiles/themes/wallpapers/${theme.wallpaper}";
    };

    # edit statusbar clock and battery
    "org/gnome/desktop/interface" = {
      clock-format = "12h";
      show-battery-percentage = true;
    };
  };
}

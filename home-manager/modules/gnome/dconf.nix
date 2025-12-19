{ theme, username, ... }:

{
  dconf.settings = {
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

    # change window focus with the mouse
    "org/gnome/desktop/wm/preferences" = {
      focus-mode = "sloppy";
    };

    # edit statusbar clock and battery
    "org/gnome/desktop/interface" = {
      clock-format = "12h";
      show-battery-percentage = true;
    };

    # paperwm configuration
    "org/gnome/shell/extensions/paperwm" = {
      selection-border-radius-bottom = 3;
      selection-border-radius-top = 3;
      selection-border-size = 5;

      vertical-margin = 10;
      vertical-margin-bottom = 10;
      window-gap = 10;

      show-focus-mode-icon = false;
      show-window-position-bar = false;
      show-workspace-indicator = false;
      minimap-scale = 0.0;
      minimap-shade-opacity = 5;

      swipe-friction = [0.5 0.1];
      swipe-sensitivity = [3.0 2.0];

      default-focus-mode = 2;
    };
  };
}

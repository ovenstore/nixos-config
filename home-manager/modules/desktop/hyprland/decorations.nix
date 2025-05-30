{ config, ... }:

{
  wayland.windowManager.hyprland.settings = {
    general = {
      gaps_in = 0;
      gaps_out = 0;

      border_size = 2;

      resize_on_border = true;

      allow_tearing = false;
      layout = "dwindle";

      "col.active_border" = "rgb(${config.lib.stylix.colors.base06})";
      "col.inactive_border" = "rgb(${config.lib.stylix.colors.base02})";
    };

    decoration = {
      rounding = 0;

      active_opacity = 1.0;
      inactive_opacity = 0.8;

      shadow = {
        enabled = false;
      };

      blur = {
        enabled = true;
      };
    };

    animations = {
      enabled = false;
    };
  };
}

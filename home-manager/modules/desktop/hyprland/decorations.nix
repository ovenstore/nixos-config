{ theme, ... }:

let
  active-border = "rgb(${theme.colors.border1})";
  inactive-border = "rgb(${theme.colors.border2})";
in {
  wayland.windowManager.hyprland.settings = with theme; {
    general = {
      gaps_in = inner-gaps;
      gaps_out = outer-gaps;

      border_size = border-width;

      allow_tearing = false;
      layout = "dwindle";

      "col.active_border" = active-border;
      "col.inactive_border" = inactive-border;
    };

    decoration = {
      rounding = border-radius;

      active_opacity = active-opacity;
      inactive_opacity = inactive-opacity;

      shadow = {
        enabled = do-shadows;
      };

      blur = {
        enabled = do-blur;
      };

      dim_inactive = do-dim;
      dim_strength = dim-strength;
    };

    animations = {
      enabled = do-animations;
    };
  };
}

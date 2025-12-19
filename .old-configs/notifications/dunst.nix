{ theme, ... }:

let
  background  = "${theme.colors.bg1}";
  text        = "${theme.colors.fg1}";
  accent      = "${theme.colors.prior1}";
  red         = "${theme.colors.red}";
  font        = "${theme.fonts.code.name}";
in {
  services.dunst = {
    enable = true;
    settings = {
      global = {
        width = "300";
        height = "(100, 200)";
        origin = "bottom-right";
        offset = "(30, 30)";
        padding = "16";
        horizontal_padding = "24";
        text_icon_padding = "16";
        icon_corner_radius = 5;
        corner_radius = 0;
        frame_width = 2;

        enable_recursive_icon_lookup = true;
        min_icon_size = 32;
        max_icon_size = 64;

        notification_limit = 10;
        sort = "yes";

        progress_bar_height = 10;
        progress_bar_min_width = 150;
        progress_bar_max_width = 250;
        progress_bar_corner_radius = 5;
        progress_bar_horizontal_alignment = "center";

        format = "<b>%s</b>\n%b";
        font = "${font} 12";
        alignment = "left";
        word_wrap = "yes";
        ellipsize = "end";
        ignore_newline = "no";
        gap_size = 20;
        stack_duplicates = true;

        mouse_left_click = "close_current";
      };

      urgency_low = {
        background = "#${background}";
        foreground = "#${text}";
        frame_color = "#${accent}";
      };

      urgency_normal = {
        background = "#${background}";
        foreground = "#${text}";
        frame_color = "#${accent}";
      };

      urgency_critical = {
        background = "#${background}";
        foreground = "#${text}";
        frame_color = "#${red}";
      };
    };
  };
}

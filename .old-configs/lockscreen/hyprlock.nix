{ theme, ...}: 

let 
  background  = "rgb(${theme.colors.bg1})";
  text        = "rgb(${theme.colors.fg1})";
  accent      = "rgb(${theme.colors.prior1})";
  red         = "rgb(${theme.colors.red})";
  blue        = "rgb(${theme.colors.blue})";
  font        = "${theme.fonts.code.name}";
in {
  programs.hyprlock = {
    enable = true;
    settings = {
      background = [
        {
          path = "screenshot";
          blur_passes = 3;
          blur_size = 8;
        }
      ];

      input-field = [
        {
          size = "200, 50";
          position = "0, -80";
          monitor = "";
          dots_center = true;
          font_family = "${font}";
          placeholder_text = "Pissword";
          outline_thickness = 5;

          font_color = "${text}";
          inner_color = "${background}";
          outer_color = "${accent}";
          fail_color = "${red}";
          check_color = "${blue}";
        }
      ];
    };
  };
}

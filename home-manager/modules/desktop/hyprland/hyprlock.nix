{ config, ...}: 

let 
  background = "rgb(${config.lib.stylix.colors.base00})";
  text = "rgb(${config.lib.stylix.colors.base05})";
  accent1 = "rgb(${config.lib.stylix.colors.base06})";
  red = "rgb(${config.lib.stylix.colors.base08})";
  blue = "rgb(${config.lib.stylix.colors.base0D})";
  font = "${config.stylix.fonts.monospace.name}";
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
          outer_color = "${accent1}";
          fail_color = "${red}";
          check_color = "${blue}";
        }
      ];
    };
  };
}

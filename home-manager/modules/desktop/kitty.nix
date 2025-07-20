{ theme, ... }:

let
  background  = "#${theme.colors.bg1}";
  foreground  = "#${theme.colors.fg1}";
  black       = "#${theme.colors.black}";
  red         = "#${theme.colors.red}";
  green       = "#${theme.colors.green}";
  yellow      = "#${theme.colors.yellow}";
  blue        = "#${theme.colors.blue}";
  purple      = "#${theme.colors.purple}";
  cyan        = "#${theme.colors.cyan}";
  white       = "#${theme.colors.white}";
in {
  programs.kitty = {
    enable = true;
    shellIntegration.enableBashIntegration = true;
	
	settings = {
	  scrollback_lines = 2000;
	  enable_audio_bell = false;
	  window_padding_width = 15;
      confirm_os_window_close = 0;

      background            = background;
      foreground            = foreground;

      selection_background  = background;
      selection_foreground  = foreground;

      url_color             = purple;
      cursor                = foreground;
      cursor_text_color     = background;

      color0                = black;
      color8                = black;

      color1                = red;
      color9                = red;

      color2                = green;
      color10               = green;

      color3                = yellow;
      color11               = yellow;
      
      color4                = blue;
      color12               = blue;

      color5                = purple;
      color13               = purple;

      color6                = cyan;
      color14               = cyan;

      color7                = white;
      color15               = white;
    };

    font = {
      name = theme.fonts.code.name;
      size = 12;
    };
  };    
}

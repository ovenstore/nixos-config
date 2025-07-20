{  rice, ... }:
{
  programs.zathura = {
	  enable = true;
	  options = let
      f = rice.lib.hex-to-rgb-comma-string; 
      t = builtins.toString rice.transparency;
    in with rice.color; {
      completion-bg           = background;
      completion-fg           = foreground;
      completion-highlight-bg = background;
      completion-highlight-fg = accent.base;
      default-bg              = "rgba(${f background},${t})";
      default-fg              = foreground;
      highlight-active-color  = "rgba(${f accent.base},0.5)";
      highlight-color         = "rgba(${f secondary.base},0.5)";
      highlight-fg            = "rgba(${f secondary.base},0.5)";
      index-fg                = accent.bright;
      index-bg                = black.dark;
      index-active-fg         = background;
      index-active-bg         = foreground;
      inputbar-bg             = background;
      inputbar-fg             = foreground;
      notification-bg         = background;
      notification-error-bg   = background;
      notification-error-fg   = foreground;
      notification-fg         = foreground;
      notification-warning-bg = background;
      notification-warning-fg = foreground;
      recolor                 = true;
      recolor-darkcolor       = foreground;
      recolor-keephue         = true;
      recolor-lightcolor      = background;
      selection-clipboard     = "clipboard";
      statusbar-bg            = black.base;
      statusbar-fg            = foreground;

		  n-completion-items      = 9999999999999;
		  exec-command = "open";
		  page-padding = rice.border-width;

      #stop at page boundries
      scroll-page-aware       = true;
      smooth-scroll           = true;
      scroll-full-overlap     = 0.01;
      scroll-step             = 100;
	  };
    mappings = {
      h = ''feedkeys "<C-Left>"'';
      j = ''feedkeys "<C-Down>"'';
      k = ''feedkeys "<C-Up>"'';
      l = ''feedkeys "<C-Right>"'';
    };
  };
}

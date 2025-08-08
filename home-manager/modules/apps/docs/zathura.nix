{ theme, ... }:

let 
  background  = "#${theme.colors.bg1}";
  background2 = "#${theme.colors.bg2}";
  foreground  = "#${theme.colors.fg1}";
  highlight   = "rgba(255, 255, 0, 0.5)";
in {
  programs.zathura = {
    enable = true;

    options = {
      default-bg              = background;
      default-fg              = foreground;
      completion-bg           = background;
      completion-fg           = foreground;
      completion-highlight-bg = background;
      completion-highlight-fg = foreground;
      highlight-active-color  = background;
      highlight-color         = highlight;
      highlight-fg            = background;
      index-fg                = foreground;
      index-bg                = background;
      index-active-fg         = background;
      index-active-bg         = foreground;
      inputbar-bg             = background2;
      inputbar-fg             = foreground;
      notification-bg         = background2;
      notification-error-bg   = background2;
      notification-error-fg   = foreground;
      notification-fg         = foreground;
      notification-warning-bg = background2;
      notification-warning-fg = foreground;
      recolor-darkcolor       = foreground;
      recolor                 = true;
      recolor-keephue         = true;
      recolor-lightcolor      = background;
      statusbar-bg            = background2;
      statusbar-fg            = foreground;
      selection-clipboard     = "clipboard";
    };
  };
}

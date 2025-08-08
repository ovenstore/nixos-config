{ theme, ... }:

let
  bg1 = "#${theme.colors.bg1}";
  bg2 = "#${theme.colors.bg2}";
  bg3 = "#${theme.colors.bg3}";
  bg4 = "#${theme.colors.bg4}";
  fg1 = "#${theme.colors.fg1}";
  fg2 = "#${theme.colors.fg2}";
  c1  = "#${theme.colors.prior1}";
  c2  = "#${theme.colors.prior2}";
  c3  = "#${theme.colors.prior3}";
  c4  = "#${theme.colors.prior4}";
  c5  = "#${theme.colors.prior5}";
  c6  = "#${theme.colors.prior6}";
in {
  programs.helix.themes = {
    base16 = {
      # window
      "ui.background" = bg1;
      "ui.background.separator" = bg3;
      "ui.text" = fg1;
      "ui.virtual.whitespace" = bg3;

      # line numbers
      "ui.linenr" = bg3;
      "ui.linenr.selected" = fg2;

      # status line
      "ui.statusline" = { fg = fg2; bg = bg2; };
      "ui.statusline.inactive" = { fg = fg2; bg = bg3; };
      "ui.statusline.normal" = { fg = bg1; bg = c1; };
      "ui.statusline.insert" = { fg = bg1; bg = c2; };
      "ui.statusline.select" = { fg = bg1; bg = c3; };

      # cursor
      "ui.cursor" = { fg = bg1; bg = fg2; };
      "ui.cursor.primary" = { fg = bg1; bg = c1; };

      "ui.cursorline.primary" = { fg = fg2; bg = bg2; };
      "ui.cursorcolumn.primary" = { bg = bg2; };

      # selection
      "ui.selection" = { fg = bg1; bg = fg2; };

      # jump labels
      "ui.virtual.jump-label" = c5;

      # syntax highlighting
      "comment" = bg4; 

      "tag" = c2;
      "label" = c3;

      "variable" = fg2;
      "string" = c1;
      "constant" = c3;
      "constant.numeric" = c4;

      "function" = c3;
      "constructor" = c1;
      "type" = c2;
      "keyword" = c2;

      "punctuation.delimiter" = c2;
      "punctuation.special" = c2;
    };
  };
}

{ pkgs, theme, ... }:

{
  gtk = {
    enable = true;

    theme = {
      name = theme.gtk.name;
      package = pkgs.${theme.gtk.package};
    };

    iconTheme = {
      name = theme.iconTheme.name;
      package = pkgs.${theme.iconTheme.package};
    };

    cursorTheme = {
      name = theme.cursor.name;
      package = pkgs.${theme.cursor.package};
      size = 24;
    };

    font.name = theme.fonts.normal.name;
  };

  home.packages = with pkgs; [
    gtk-engine-murrine
  ];
}

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

    font = {
      name = theme.fonts.normal.name;
    };

    gtk3.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };

    gtk4.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };
  };

  home.packages = with pkgs; [
    gtk-engine-murrine
    gruvbox-dark-gtk
  ];
}

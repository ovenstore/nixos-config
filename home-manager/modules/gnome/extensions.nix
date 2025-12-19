{ pkgs, ... }:

{
  home.packages = with pkgs; [
    gnomeExtensions.paperwm
  ];

  dconf.settings = {
    "org/gnome/shell" = {
      enabled-extensions = [
        "paperwm@paperwm.github.com"
      ];
    };
  };
}

{ config, pkgs, homeStateVersion, username, hostname, theme, ... }:

let
  font = pkgs.${theme.fonts.code.package};
  font-icons = pkgs.nerd-fonts.${theme.fonts.code.package};
  cursor = pkgs.${theme.cursor.package};
  icons = pkgs.${theme.iconTheme.package};
in {
  imports = [
    ./modules
  ];

  # theme related packages
  home.packages = [
    font
    font-icons
    cursor
    icons
  ];

  home = {
    username = username;
    homeDirectory = "/home/${username}";
    stateVersion = homeStateVersion;
  };

  news.display = "silent";

  programs.home-manager.enable = true;

  nixpkgs.config.allowUnfree = true;
}



{ config, pkgs, settings, ... }:

{
  imports = [
    ./modules
    ./packages.nix
    ./stylix.nix
  ];

  home = {
    username = settings.username;
    homeDirectory = "/home/${settings.username}";
    stateVersion = settings.stateVersion;
  };

  news.display = "silent";

  programs.home-manager.enable = true;
}



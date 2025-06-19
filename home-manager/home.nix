{ config, pkgs, homeStateVersion, username, ... }:

{
  imports = [
    ./modules
    ./packages.nix
    ./stylix.nix
  ];

  home = {
    username = username;
    homeDirectory = "/home/${username}";
    stateVersion = homeStateVersion;
  };

  news.display = "silent";

  programs.home-manager.enable = true;
}



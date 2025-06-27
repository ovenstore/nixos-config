{ config, pkgs, homeStateVersion, username, hostname, ... }:

{
  imports = [
    ./modules
    ./stylix.nix
    ../hosts/${hostname}/inclusions.nix     # janky as hell
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



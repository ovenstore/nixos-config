{ homeStateVersion, username, ... }:

{ 
  home = {
    username = username;
    homeDirectory = "/home/${username}";
    stateVersion = homeStateVersion;
  };

  news.display = "silent";

  programs.home-manager.enable = true;
}



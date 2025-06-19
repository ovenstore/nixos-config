{ settings, ... }:

{
  programs.git = {
    enable = true;

    userName = settings.username;
    userEmail = "ostory674@gmail.com";

    extraConfig = {
      init.defaultBranch = "main";
    };
  };
}

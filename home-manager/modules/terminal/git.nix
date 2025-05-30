{ settings, ... }:

{
  programs.git = {
    enable = true;

    userName = settings.username;
    userEmail = settings.email;

    extraConfig = {
      init.defaultBranch = "main";
    };
  };
}

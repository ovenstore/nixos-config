{ username, ... }:

{
  programs.git = {
    enable = true;

    userName = username;
    userEmail = "ostory674@gmail.com";

    extraConfig = {
      init.defaultBranch = "main";
    };
  };
}

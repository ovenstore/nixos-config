{
  programs.git = {
    enable = true;

    settings = {
      user = {
        name = "ovenstore";
        email = "ostory674@gmail.com";
      };

      init.defaultBranch = "main";
      pull.rebase = false;
    };
  };
}

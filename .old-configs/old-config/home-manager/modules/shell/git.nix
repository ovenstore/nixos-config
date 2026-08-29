{
  programs.git = {
    enable = true;

    userName = "ovenstore";
    userEmail = "ostory674@gmail.com";

    extraConfig = {
      pull.rebase = false;
      init.defaultBranch = "main";
    };

    # ---- 25.11+ git settings ---- #
    # settings = {
    #   user = {
    #     name = "ovenstore";
    #     email = "ostory674@gmail.com";
    #   };

    #   init.defaultBranch = "main";
    #   pull.rebase = false;
    # };
  };
}

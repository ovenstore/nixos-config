{
  programs.bash = {
    enable = true;

    shellAliases = {
      v = "vim";
      vi = "vim";
      h = "hx";

      zz = "z ..";

      ff = "fastfetch";

      cat = "bat";
      zat = "zathura";

      # launch dua interactive on the root filesystem
      dui = "dua i /";

      # assumes current hostname should be used
      ns = "nh os switch";
      nsu = "nh os switch --update";
      hs = "nh home switch && set-wall"; # relies on set-wall, declared in desktop/swww.nix
      
      # list home and system generations
      hg = "home-manager generations";
      ng = "sudo nix-env --list-generations --profile /nix/var/nix/profiles/system";
    };

    historyControl = [ "ignoredups" ];
    historyIgnore = [
      "ls *"
      "lt *"
      "ll *"
      "lla *"
      "eza *"
      "cd *"
    ];
  };
}


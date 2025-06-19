{ username, ... }:

{
  programs.nh = {
    enable = true;

    clean = {
      enable = true;
      dates = "daily";
      extraArgs = "all --keep 25";
    };

    flake = "/home/${username}/.dotfiles";
  };
}

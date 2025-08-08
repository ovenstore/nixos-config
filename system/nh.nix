{ username, ... }:

{
  programs.nh = {
    enable = true;

    clean = {
      enable = true;
      dates = "daily";
      extraArgs = "--keep 10";
    };

    flake = "/home/${username}/.dotfiles";
  };
}

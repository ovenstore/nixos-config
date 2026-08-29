{
  programs.eza = {
    enable = true;
    enableBashIntegration = true;
    colors = "always";
    git = true;
    icons = "always";
    extraOptions = [
      "--group-directories-first"
      "--header"
    ];
  };
}

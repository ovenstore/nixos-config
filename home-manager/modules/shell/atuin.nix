{
  programs.atuin = {
    enable = true;
    enableBashIntegration = true;

    settings = {
      search_mode = "fuzzy";
      filter_mode = "global";
      enter_accept = false;

      style = "full";
      inline_height = 0;
      show_help = false;

      history_filter = [
        "^lt"
        "^ll"
        "^lla"
        "^eza"
        "^cd"
      ];
    };
  };
}

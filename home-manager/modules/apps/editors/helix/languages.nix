{
  programs.helix.languages = {
    language = [
      {
        name = "nix";
        language-servers = [ "nixd" ];
      }
    ];

    language-server = {
      "nixd" = {
        command = "nixd";
      };
    };
  };
}

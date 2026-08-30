{ pkgs, username, ... }:

{
  hjem.users.${username}.files = {
    ".config/yazi/yazi.toml".source = ./yazi.toml;
    ".config/yazi/keymap.toml".source = ./keymap.toml;
    ".config/yazi/init.lua".source = ./init.lua;
    ".config/yazi/plugins/full-border.yazi".source = "${pkgs.yaziPlugins.full-border}";
    ".config/yazi/plugins/git.yazi".source = "${pkgs.yaziPlugins.git}";
    ".config/yazi/plugins/mediainfo.yazi".source = "${pkgs.yaziPlugins.mediainfo}";
    ".config/yazi/plugins/duckdb.yazi".source = "${pkgs.yaziPlugins.duckdb}";
    ".config/yazi/plugins/ouch.yazi".source = "${pkgs.yaziPlugins.ouch}";
  };
}

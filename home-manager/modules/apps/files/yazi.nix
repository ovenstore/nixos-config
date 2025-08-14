{ pkgs, ... }:

{
  programs.yazi = {
    enable = true;
    enableBashIntegration = true;
    shellWrapperName = "y";

    # install plugins
    plugins = {
      "full-border" = pkgs.yaziPlugins.full-border;
      "git" = pkgs.yaziPlugins.git;
      "ouch" = pkgs.yaziPlugins.ouch;
    };

    # enable full-border and git plugins
    initLua = ''
      require("full-border"):setup {
        type = ui.Border.PLAIN,
      }
      require("git"):setup() 
    '';

    # ouch compression configuration
    keymap.mgr.prepend_keymap = [
      {
        on = "C";
        run = "plugin ouch";
        desc = "compress with ouch";
      }
    ];

    settings = {
      # regular yazi configuration
      mgr = {
        ratio = [ 2 4 3 ];
        sort_by = "alphabetical";
        sort_sensitive = false;
        sort_dir_first = true;
        show_hidden = true;
        show_symlink = true;
      };

      # ouch decompression configuration
      opener.extract = [
        {
          run = "ouch d -y \"$@\"";
          desc = "extract here with ouch";
          for = "unix";
        }
      ];

      plugin = {
        # git plugin configuration
        prepend_fetchers = [
          {
            id = "git";
            name = "*";
            run = "git";
          }
          {
            id = "git";
            name = "*/";
            run = "git";
          }
        ];

        # ouch plugin preview configuration
        prepend_previewers = [
          { mime = "application/zip"; run = "ouch"; }
          { mime = "application/octet-stream"; run = "ouch"; }
          { mime = "application/x-tar"; run = "ouch"; }
          { mime = "application/gzip"; run = "ouch"; }
          { mime = "application/x-gzip"; run = "ouch"; }
          { mime = "application/x-bzip2"; run = "ouch"; }
          { mime = "application/x-7z-compressed"; run = "ouch"; }
          { mime = "application/x-rar"; run = "ouch"; }
          { mime = "application/x-xz"; run = "ouch"; }
        ];
      };
    };
  };
}

{
  programs.helix = {
    enable = true;
  
    settings = {
      theme = "base16";
      editor = {
        line-number = "relative";
        cursorline = true;
        cursorcolumn = true;
        soft-wrap.enable = true;
        color-modes = true;

        auto-save = {
          focus-lost = true;
          after-delay = {
            enable = true;
            timeout = 3000;
          };
        };
        
        cursor-shape = {
          insert = "bar";
          normal = "block";
          select = "underline";
        };

        indent-guides = {
          render = true;
          character = "|";
        };

        statusline = {
          left = [
            "mode"
            "spinner"
            "file-name"
            "read-only-indicator"
            "file-type"
            "version-control"
          ];

          right = [
            "total-line-numbers"
            "diagnostics"
            "selections"
            "primary-selection-length"
            "register"
            "position"
            "file-encoding"
          ];
        };
      };
    };
  };
}

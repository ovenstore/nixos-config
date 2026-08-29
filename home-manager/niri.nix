{
  wayland.windowManager.niri = {
    enable = true;

    settings = {
      prefer-no-csd = { };

      input.keyboard.xkb.layout = "us";

      layout = {
        gaps = 8;
        focus-ring = {
          enable = true;
          width = 2;
        };
      };
    };
  };
}

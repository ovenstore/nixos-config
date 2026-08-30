{
  wayland.windowManager.niri = {
    enable = true;

    settings = {
      prefer-no-csd = { };

      input.keyboard.xkb.layout = "us";

      layout = {
        gaps = 8;

        focus-ring = {
          width = 2;
        };
      };

#     binds = {
#         "Mod+Return".spawn = "kitty";

#         "Mod+Q".close-window = null;
#         "Mod+F".maximize-column = null;
#         "Mod+G".fullscreen-window = null;
#         "Mod+Shift+F".toggle-window-floating = null;
#         "Mod+C".center-column = null;

#         "Mod+H".focus-column-left = null;
#         "Mod+L".focus-column-right = null;
#         "Mod+K".focus-window-up = null;
#         "Mod+J".focus-window-down = null;

#         "Mod+Left".focus-column-left = null;
#         "Mod+Right".focus-column-right = null;
#         "Mod+Up".focus-window-up = null;
#         "Mod+Down".focus-window-down = null;

#         "Mod+Shift+H".move-column-left = null;
#         "Mod+Shift+L".move-column-right = null;
#         "Mod+Shift+K".move-window-up = null;
#         "Mod+Shift+J".move-window-down = null;

#         "Mod+1".focus-workspace = "w0";
#         "Mod+2".focus-workspace = "w1";
#         "Mod+3".focus-workspace = "w2";
#         "Mod+4".focus-workspace = "w3";
#         "Mod+5".focus-workspace = "w4";
#         "Mod+6".focus-workspace = "w5";
#         "Mod+7".focus-workspace = "w6";
#         "Mod+8".focus-workspace = "w7";
#         "Mod+9".focus-workspace = "w8";
#         "Mod+0".focus-workspace = "w9";

#         "Mod+Shift+1".move-column-to-workspace = "w0";
#         "Mod+Shift+2".move-column-to-workspace = "w1";
#         "Mod+Shift+3".move-column-to-workspace = "w2";
#         "Mod+Shift+4".move-column-to-workspace = "w3";
#         "Mod+Shift+5".move-column-to-workspace = "w4";
#         "Mod+Shift+6".move-column-to-workspace = "w5";
#         "Mod+Shift+7".move-column-to-workspace = "w6";
#         "Mod+Shift+8".move-column-to-workspace = "w7";
#         "Mod+Shift+9".move-column-to-workspace = "w8";
#         "Mod+Shift+0".move-column-to-workspace = "w9";

#         "XF86AudioRaiseVolume".spawn-sh = "wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 5%+";
#         "XF86AudioLowerVolume".spawn-sh = "wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 5%-";

#         "Mod+Ctrl+H".set-column-width = "-5%";
#         "Mod+Ctrl+L".set-column-width = "+5%";
#         "Mod+Ctrl+J".set-window-height = "-5%";
#         "Mod+Ctrl+K".set-window-height = "+5%";
#     };
    };
  };
}

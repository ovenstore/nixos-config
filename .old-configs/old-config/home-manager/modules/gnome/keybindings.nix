{
  dconf.settings = {
    # paperwm keybindings (defaults not included)
    "org/gnome/shell/extensions/paperwm/keybindings" = {
      # close the active window
      close-window = [ "<Super>BackSpace" "<Super>q" ];

      # move the active window
      move-down  = [ "<Shift><Super>j" "<Shift><Super>Down" ];
      move-up    = [ "<Shift><Super>k" "<Shift><Super>Up" ];
      move-left  = [ "<Shift><Super>h" "<Shift><Super>Left" ];
      move-right = [ "<Shift><Super>l" "<Shift><Super>Right" ];

      # change the active focus
      switch-down  = [ "<Super>j" "<Super>Down" ];
      switch-up    = [ "<Super>k" "<Super>Up" ];
      switch-left  = [ "<Super>h" "<Super>Left" ];
      switch-right = [ "<Super>l" "<Super>Right" ];

      # create a new window of the current active window
      new-window = [ "<Super>n" ];

      # scratch layer binds
      toggle-scratch = [ "<Shift><Super>Tab" ];
      toggle-scratch-layer = [ "<Control><Super>Tab" ];
      toggle-scratch-window = [ "<Super>Tab" ];
    };
      
    # gnome launcher keybindings
    "org/gnome/settings-daemon/plugins/media-keys" = {
      # launch web browser (firefox)
      www = [ "<Shift><Super>b" ];

      # poweroff
      shutdown = [ "<Shift><Super>Delete" "<Shift><Super>q"];

      # lock the screen
      screensaver = [ "<Super>Delete" ];
    };

    # custom keybinding to launch a terminal
    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = "<Super>Return";
      command = "kitty";
      name = "Launch Terminal";
    };
    
    # gnome wm keybindings
    "org/gnome/desktop/wm/keybindings" = {
      # launch the app launcher
      toggle-application-view = [ "<Shift><Super>Return" ];

      # move the active window to a specified workspace
      move-to-workspace-1  = [ "<Shift><Super>1" ];
      move-to-workspace-2  = [ "<Shift><Super>2" ];
      move-to-workspace-3  = [ "<Shift><Super>3" ];
      move-to-workspace-4  = [ "<Shift><Super>4" ];
      move-to-workspace-5  = [ "<Shift><Super>5" ];
      move-to-workspace-6  = [ "<Shift><Super>6" ];
      move-to-workspace-7  = [ "<Shift><Super>7" ];
      move-to-workspace-8  = [ "<Shift><Super>8" ];
      move-to-workspace-9  = [ "<Shift><Super>9" ];
      move-to-workspace-10 = [ "<Shift><Super>0" ];

      # change focus to a specified workspace
      switch-to-workspace-1  = [ "<Super>1" ];
      switch-to-workspace-2  = [ "<Super>2" ];
      switch-to-workspace-3  = [ "<Super>3" ];
      switch-to-workspace-4  = [ "<Super>4" ];
      switch-to-workspace-5  = [ "<Super>5" ];
      switch-to-workspace-6  = [ "<Super>6" ];
      switch-to-workspace-7  = [ "<Super>7" ];
      switch-to-workspace-8  = [ "<Super>8" ];
      switch-to-workspace-9  = [ "<Super>9" ];
      switch-to-workspace-10 = [ "<Super>0" ];
    };
      

    # ---------- nullify bad defaults ---------- #
    "org/gnome/desktop/wm/keybindings" = {
      switch-to-application-1 = [];
      switch-to-application-2 = [];
      switch-to-application-3 = [];
      switch-to-application-4 = [];
      switch-to-application-5 = [];
      switch-to-application-6 = [];
      switch-to-application-7 = [];
      switch-to-application-8 = [];
      switch-to-application-9 = [];
      logout = [];
    };

    "org/gnome/mutter" = {
      overlay-key = "";
    };

    "org/gnome/shell/extensions/paperwm/keybindings" = {
      cycle-height-backwards = [ "" ];
      cycle-width-backwards = [ "" ];
      drift-left = [ "" ];
      drift-right = [ "" ];
      live-alt-tab = [ "" ];
      live-alt-tab-backward = [ "" ];
      live-alt-tab-scratch-backward = [ "" ];
      move-down-workspace = [ "" ];
      move-monitor-above = [ "" ];
      move-monitor-below = [ "" ];
      move-monitor-left = [ "" ];
      move-monitor-right = [ "" ];
      move-previous-workspace = [ "" ];
      move-previous-workspace-backward = [ "" ];
      move-space-monitor-above = [ "" ];
      move-space-monitor-below= [ "" ];
      move-space-monitor-left= [ "" ];
      move-space-monitor-right = [ "" ];
      move-up-workspace = [ "" ];
      previous-workspace = [ "" ];
      previous-workspace-backward = [ "" ];
      swap-monitor-above = [ "" ];
      swap-monitor-below = [ "" ];
      swap-monitor-left = [ "" ];
      swap-monitor-right = [ "" ];
      switch-focus-mode = [ "" ];
      switch-down-workspace = [ "" ];
      switch-up-workspace = [ "" ];
      switch-monitor-above = [ "" ];
      switch-monitor-below = [ "" ];
      switch-monitor-left = [ "" ];
      switch-monitor-right = [ "" ];
      toggle-top-and-position-bar = [ "" ];
      live-alt-tab-scratch = [ "" ];
    };
  };
}

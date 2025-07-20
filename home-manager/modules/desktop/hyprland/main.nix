{ theme, ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = false;

    settings = {
      env = [
        # Hint Electron apps to use Wayland
        "NIXOS_OZONE_WL,1"
        "XDG_CURRENT_DESKTOP,Hyprland"
        "XDG_SESSION_TYPE,wayland"
        "XDG_SESSION_DESKTOP,Hyprland"
        "QT_QPA_PLATFORM,wayland"
        "XDG_SCREENSHOTS_DIR,$HOME/screens"
      ];

      monitor = ",1920x1080@60,auto,1";

      "$mainMod" = "SUPER";

      "$browser"      =   "firefox";
      "$fileManager"  =   "thunar";
      "$menu"         =   "app-launcher";
      "$powerMenu"    =   "power-menu";
      "$terminal"     =   "kitty";

      exec-once = [
        "waybar"
        "swww-daemon && sleep 1 && swww img ~/.dotfiles/wallpapers/${theme.wallpaper}"
      ];

      general.resize_on_border = true;

      input = {
        kb_layout = "us";
      };

      gestures = {
        workspace_swipe = true;
        workspace_swipe_invert = false;
        # workspace_swipe_forever	= true;
      };

      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };

      master = {
        new_status = "slave";
        new_on_top = true;
        mfact = 0.5;
      };

      misc = {
        force_default_wallpaper = 0;
        disable_hyprland_logo = true;
      };

      ecosystem = {
        no_update_news = true;
        no_donation_nag = true;
      };

      windowrulev2 = [
        "float,class:(mpv)|(imv)"
        "noborder,nofocus,class:(showmethekey-gtk)"

        "workspace 1,class:(obsidian)"

        "suppressevent maximize, class:.*"
      ];

    };
  };
}

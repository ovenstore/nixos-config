{ pkgs, theme, ... }:

let
  background            = "${theme.colors.bg1}";
  selection-background  = "${theme.colors.bg2}"; 
  text                  = "${theme.colors.fg1}"; 
  green                 = "${theme.colors.green}"; 
  border               = "${theme.colors.border1}"; 
  accent2               = "${theme.colors.prior2}"; 
  font                  = "${theme.fonts.code.name}";

  # declaration of the basic fuzzel application launcher
  app-launcher = pkgs.writeShellScriptBin "app-launcher" ''
    pkill fuzzel
    fuzzel
  '';

  # declaration of a fuzzel power menu script
  power-menu = pkgs.writeShellScriptBin "power-menu" ''
    pkill fuzzel 

    SELECTION="$(printf "Poweroff\nReboot\nLogout\nLock" | fuzzel --dmenu -l 4 --width 10)"
    
    case "$SELECTION" in
        "Poweroff")
            systemctl poweroff;;
    	"Reboot")
            systemctl reboot;;
    	"Logout")
    		hyprctl dispatch exit;;
    	"Lock")
    		hyprlock;;
        *)
            exit 0;;
    esac	
  '';

in {
  # add the app launcher and power menu to home-manager as applications
  home.packages = [ app-launcher power-menu ];

  # fuzzel config
  programs.fuzzel = {
    enable = true;
    
    settings = {
      main = {
        font = "${font}:size=8";
        use-bold = true;
        terminal = "kitty";
        layer = "overlay";
        lines = 8;
        width = 20;
      };

      colors = {
        background = "${background}ff";
        text = "${text}ff";
        prompt = "${accent2}ff";
        placeholder = "${text}ff";
        input = "${text}ff";
        match = "${green}ff";
        selection = "${selection-background}ff";
        selection-text = "${text}ff";
        selection-match = "${green}ff";
        border = "${border}ff";
      };

      border = {
        width = 2;
        radius = 0;
      };
    };
  };
}

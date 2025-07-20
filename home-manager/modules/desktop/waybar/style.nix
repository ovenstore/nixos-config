{ theme, ... }:

let
  font        = "${theme.fonts.code.name}";
  background  = "#${theme.colors.bg1}";
  dark1       = "#${theme.colors.bg2}";
  dark2       = "#${theme.colors.bg3}";
  text        = "#${theme.colors.fg1}";
  light1      = "#${theme.colors.fg2}";
  accent1     = "#${theme.colors.prior1}";
  accent2     = "#${theme.colors.prior2}";
in {
  programs.waybar.style = ''
    * {
        border-radius: 0px;
        min-height: 0px;
        font-weight: 500;
        font-size: 15px;
        font-family: "${font}";
        padding: 0px;
    }
    
    window#waybar {
        border: 2px solid ${dark2};
        background: ${background};
    }
    
    tooltip {
        background-color: ${background};
        border: 2px solid ${accent1};
        padding: 10;
    }

    #workspaces {
        margin: 6px;
    }
    
    #workspaces button {
        padding: 2px;
        margin: 3px 2px;
        background: transparent;
        border-radius: 0px;
    }
    
    #workspaces button.active {
        background-color: ${accent1};
        color: ${background};
    }
    
    #workspaces button.empty:not(.active) {
        background-color: ${dark2};
        color: ${background};
    }
    
    #workspaces button:not(.active):not(.empty) {
        background-color: ${dark2};
        color: ${text};
    }
    
    #workspaces button.urgent {
        background-color: @red;
    }
    
    #clock {
        color: ${text};
    }

    #backlight,
    #clock,
    #cpu,
    #memory,
    #battery,
    #network,
    #pulseaudio {
        padding: 2px 8px;
        margin: 9px 6px;
    }
    
    #battery,
    #backlight,
    #pulseaudio {
        background-color: ${accent2};
        color: ${background};
    }
    
    #network {
        margin-right: 8px;
        background-color: ${accent1};
        color: ${background};
    }

    #cpu,
    #memory {
        margin: 9px 1px;
        color: ${light1};
    }
    
    
    #cpu.critical,
    #memory.critical,
    #battery.warning,
    #battery.critical,
    #battery.urgent {
        background-color: ${dark1};
        color: @red;
    }
  '';
}

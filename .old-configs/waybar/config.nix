{
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 30;

        modules-left = ["custom/nix" "hyprland/workspaces"];
        modules-center = ["clock"];
        modules-right = [
          "cpu" 
          "memory" 
          "pulseaudio" 
          "backlight" 
          "battery" 
          "network"
        ];

        "custom/nix" = {
          format = " ";
          tooltip = "This does nothing";
        };
        
        "hyprland/workspaces" = {
          disable-scroll = true;
          show-special = true;
          special-visible-only = true;
          all-outputs = true;
          on-click = "activate";
          persistent-workspaces = {
            "*" = 8;
          };
        };

        "cpu" = {
          format = "CPU {usage}%";
          interval = 2;

          states = {
            critical = 90;
          };
        };

        "memory" = {
          format = "RAM {percentage}%";
          interval = 2;

          states = {
            critical = 80;
          };
        };

        "pulseaudio" = {
          format = "{icon} {volume}%";
          format-bluetooth = "{icon} {volume}% ";
          format-muted = " ";
          format-icons = {
            "headphones" = "";
            "headset" = "󰋎";
            "phone" = "";
            "portable" = "";
            "car" = "";
            "default" = ["" ""];
          };
        };

        "backlight" = {
          format = "{icon} {percent}%";
          on-scroll-up = "light -A 1";
          on-scroll-down = "light -U 1";
          format-icons = ["󱩎" "󱩏" "󱩐" "󱩑" "󱩒" "󱩓" "󱩔" "󱩕" "󱩖"];
        };

        "battery" = {
          states = {
            warning = 20;
            critical = 10;
          };
          format = "{icon} {capacity}%";
          format-plugged = " {capacity}%";
          format-charging = "󰢝 {capacity}%";
          format-alt = "{time} {icon}";
          format-icons = ["" "" "" "" ""];
        };

        "clock" = {
          format = "{:%b. %d - %I:%M %p}";
          tooltip = false;
        };

        "network" = {
          format = "{ifname}";
          format-wifi = "  Connected";
          format-ethernet = "󰈀 {ipaddr}/{cidr}";
          format-disconnected = "󱛅 Disconnected";
          tooltip-format = "󰛳 {ifname} via {gwaddr}";
          tooltip-format-wifi = "  {essid} ({signalStrength}%)";
          tooltip-format-ethernet = "  {ifname}";
          tooltip-format-disconnected = "Disconnected";
          max-length = 50;
        };
      };
    };
  };
}

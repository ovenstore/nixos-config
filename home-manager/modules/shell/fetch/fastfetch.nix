{ username, hostname, theme, ... }:

let
  color = "${theme.colors.prior1}";
in {
  programs.fastfetch = {
    enable = true;
    
    settings = {
      logo = {
        type = "file";
        source = "~/.dotfiles/home-manager/modules/shell/fetch/logos/nix.txt";
        # type = "auto";
        # source = "nix-small";
      };

      display = {
        separator = "  ";
      };

      modules = [
        {
          type = "custom";
          format = "┌────────────────────────────────────────┐";
        }
        {
          type = "os";
          key = " ";
          format = "{2} {9}";
          keyColor = "#${color}";
        }
        {
          type = "kernel";
          key = " ";
          keyColor = "#${color}";
        }
        {
          type = "packages";
          key = " ";
          keyColor = "#${color}";
        }
        {
          type = "shell";
          key = " ";
          keyColor = "#${color}";
        }
        {
          type = "terminal";
          key = " ";
          keyColor = "#${color}";
        }
        {
          type = "editor";
          key = " ";
          keyColor = "#${color}";
        }
        {
          type = "WM";
          key = "󰖲 ";
          format = "{2} {3}";
          keyColor = "#${color}";
        }
        {	
  	      type = "custom";
          format = "└────────────────────────────────────────┘";
      	}
  	    {
          type = "custom";
          format = "┌────────────────────────────────────────┐";
        }
       	{
          type = "memory";
    	    key = " ";
    	    format = "{1} / {2} [{3}]";
          keyColor = "#${color}";
        }
  	    {
          type = "disk";
    	    key = "󰋊 ";
    	    format = "{1} / {2} [{3}]";
          keyColor = "#${color}";
        }
        {
          type = "command";
          key = "󱦟 ";
          keyColor = "#${color}";
          text = "birth_install=$(stat -c %W /); current=$(date +%s); time_progression=$((current - birth_install)); days_difference=$((time_progression / 86400)); echo $days_difference days";
        }
      	{
          type = "uptime";
          key = "󱫐 ";
          keyColor = "#${color}";
        }
        {
          type = "colors";
          key = " ";
          keyColor = "#${color}";
          symbol = "circle";
        }
  	    {
        	type = "custom";
        	format = "└────────────────────────────────────────┘";
      	}
        "break"
      ];
    };
  };
}

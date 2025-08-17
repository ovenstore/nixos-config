{ username, hostname, theme, ... }:

{
  programs.fastfetch = {
    enable = true;
    
    settings = {
      logo = {
        type = "file";
        source = "~/.dotfiles/home-manager/modules/shell/fetch/logos/nix.txt";
      };

      display = {
        separator = "  ";
      };

      modules = [
        {
          "type" = "custom";
          "format" = "┌────────────────────────────────────────┐";
        }
        {
          "type" = "os";
          "key" = " ";
          "format" = "{2} {9}";
          "keyColor" = "34";
        }
        {
          "type" = "kernel";
          "key" = " ";
          "keyColor" = "34";
        }
        {
          "type" = "packages";
          "key" = " ";
          "keyColor" = "34";
        }
        {
          "type" = "shell";
          "key" = " ";
          "keyColor" = "34";
        }
        {
          "type" = "terminal";
          "key" = " ";
          "keyColor" = "34";
        }
        {
          "type" = "editor";
          "key" = " ";
          "keyColor" = "34";
        }
        {
          "type" = "WM";
          "key" = "󰖲 ";
          "format" = "{2} {3}";
          "keyColor" = "34";
        }
        {	
  	      "type" = "custom";
          "format" = "└────────────────────────────────────────┘";
      	}
  	    {
          "type" = "custom";
          "format" = "┌────────────────────────────────────────┐";
        }
       	{
          "type" = "memory";
    	    "key" = " ";
    	    "format" = "{1} / {2} [{3}]";
          "keyColor" = "34";
        }
  	    {
          "type" = "disk";
    	    "key" = "󰋊 ";
    	    "format" = "{1} / {2} [{3}]";
          "keyColor" = "34";
        }
        {
          "type" = "command";
          "key" = "󱦟 ";
          "keyColor" = "34";
          "text" = "birth_install=$(stat -c %W /); current=$(date +%s); time_progression=$((current - birth_install)); days_difference=$((time_progression / 86400)); echo $days_difference days";
        }
      	{
          "type" = "uptime";
          "key" = "󱫐 ";
          "keyColor" = "34";
        }
        {
          "type" = "colors";
          "key" = " ";
          "keyColor" = "34";
          "symbol" = "circle";
        }
  	    {
        	"type" = "custom";
        	"format" = "└────────────────────────────────────────┘";
      	}
        "break"
      ];
    };
  };
}

{ theme, ... }:

let
  bg1     = "#${theme.colors.bg1}";
  bg2     = "#${theme.colors.bg2}";
  fg      = "#${theme.colors.fg1}";
  color1  = "#${theme.colors.prior1}";
  color2  = "#${theme.colors.prior2}";
  color3  = "#${theme.colors.prior3}";
  color4  = "#${theme.colors.prior4}";
in {
  programs.btop = {
    enable = true;

    settings = {
      color_theme = "custom";
      rounded_corners = false;
      graph_symbol = "brail";

      show_coretemp = true;

      vim_keys = true;
    };
  };

  home.file.".config/btop/themes/custom.theme".text = ''
    theme[main_bg]="${bg1}"
    
    # Main text color
    theme[main_fg]="${fg}"
    
    # Title color for boxes
    theme[title]="${fg}"
    
    # Highlight color for keyboard shortcuts
    theme[hi_fg]="${color1}"
    
    # Background color of selected item in processes box
    theme[selected_bg]="${bg2}"
    
    # Foreground color of selected item in processes box
    theme[selected_fg]="${fg}"
    
    # Color of inactive/disabled text
    theme[inactive_fg]="${bg2}"
    
    # Color of text appearing on top of graphs, i.e uptime and current network graph scaling
    theme[graph_text]="${fg}"
    
    # Background color of the percentage meters
    theme[meter_bg]="${bg1}"
    
    # Misc colors for processes box including mini cpu graphs, details memory graph and details status text
    theme[proc_misc]="${color2}"
    
    # CPU, Memory, Network, Proc box outline colors
    theme[cpu_box]="${color2}" 
    theme[mem_box]="${color2}"
    theme[net_box]="${color2}" 
    theme[proc_box]="${color2}" 
    
    # Box divider line and small boxes line color
    theme[div_line]="${bg2}"
    
    # Temperature graph color
    theme[temp_start]="${color1}"
    theme[temp_mid]="${color2}"
    theme[temp_end]="${color3}"
    
    # CPU graph colors 
    theme[cpu_start]="${color1}"
    theme[cpu_mid]="${color2}"
    theme[cpu_end]="${color3}"
    
    # Mem/Disk free meter 
    theme[free_start]="${color1}"
    theme[free_mid]="${color2}"
    theme[free_end]="${color3}"
    
    # Mem/Disk cached meter 
    theme[cached_start]="${color1}"
    theme[cached_mid]="${color2}"
    theme[cached_end]="${color3}"
    
    # Mem/Disk available meter 
    theme[available_start]="${color1}"
    theme[available_mid]="${color2}"
    theme[available_end]="${color3}"
    
    # Mem/Disk used meter 
    theme[used_start]="${color1}"
    theme[used_mid]="${color2}"
    theme[used_end]="${color3}"
    
    # Download graph colors 
    theme[download_start]="${color1}"
    theme[download_mid]="${color2}"
    theme[download_end]="${color3}"
    
    # Upload graph colors 
    theme[upload_start]="${color1}"
    theme[upload_mid]="${color2}"
    theme[upload_end]="${color3}"
    
    # Process box color gradient for threads, mem and cpu usage 
    theme[process_start]="${color1}"
    theme[process_mid]="${color2}"
    theme[process_end]="${color3}"
  '';
}

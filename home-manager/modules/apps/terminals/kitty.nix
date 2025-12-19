{
  programs.kitty = {
    enable = true;
    shellIntegration.enableBashIntegration = true;
	
  	settings = {
  	  scrollback_lines = 2000;
  	  enable_audio_bell = false;
  	  window_padding_width = 15;
      confirm_os_window_close = 0;
      hide_window_decorations = "yes";
    };
  };    
}

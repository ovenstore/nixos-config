{ pkgs, ... }: 

{
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # Desktop Apps
    xfce.thunar
    obsidian

    # Discord Override for Vencord and OpenASAR
    (discord.override {
      withOpenASAR = true;
      withVencord = true;
    })
  ];
}



{ pkgs, ... }:

{
  home.packages = with pkgs; [ 
    obsidian 
    xfce.thunar
  ];
}

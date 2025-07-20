{ config, pkgs, ... }:

{
  imports = [ 
    ./boot.nix
    ./env.nix
    ./hyprland.nix
    ./keyd.nix
    ./net.nix
    ./nh.nix
    ./packages.nix
    ./system.nix
    ./timezone.nix
    ./user.nix
    ./sddm.nix
    ./swww.nix
  ];
}


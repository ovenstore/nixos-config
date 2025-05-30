{ config, pkgs, ... }:

{
  imports = [ 
    ./boot.nix
    ./env.nix
    ./keyd.nix
    ./net.nix
    ./nh.nix
    ./system.nix
    ./hyprland.nix
    ./packages.nix
    ./timezone.nix
    ./user.nix
    ./sddm.nix
  ];
}


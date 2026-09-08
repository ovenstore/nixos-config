{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    alacritty
    git
  ];

  nixpkgs.config.permittedInsecurePackages = [
    "googleearth-pro-7.3.7.1155"
  ];
}


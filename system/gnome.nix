{ config, pkgs, ... }:

{
  # pre 25.11
  services.displayManager.gdm.enable = true;
  services.desktopManager.gnome.enable = true;

  # remove default bs
  services.gnome.core-apps.enable = false;
  services.gnome.core-developer-tools.enable = false;
  services.gnome.games.enable = false;
  services.gnome.gnome-remote-desktop.enable = false;
  environment.gnome.excludePackages = with pkgs; [ gnome-tour gnome-user-docs ];
}

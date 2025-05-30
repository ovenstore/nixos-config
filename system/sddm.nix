{ pkgs, ... }:

{
  environment.systemPackages = [(
    pkgs.catppuccin-sddm.override {
      flavor = "mocha";
      fontSize = "9";
      font = "Fira Mono";
      background = "${../home-manager/wallpapers/mocha.png}";
      loginBackground = true;
    }
  )];
  
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
    theme = "catppuccin-mocha";
    package = pkgs.kdePackages.sddm;
  };
}

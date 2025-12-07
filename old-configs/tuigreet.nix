{ username, ... }:

{
  services.greetd = {
    enable = true;
    restart = false;

    settings = {
      default_session = {
        command = "tuigreet --time --remember --cmd hyprland";
        user = "${username}";
      };
    };
  };
}

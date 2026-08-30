{
  systemd.targets = {
    sleep.enable = false;
    suspend.enable = false;
    hibernate.enable = false;
    hybrid-sleep.enable = false;
  };

  services.power-profiles-daemon.enable = true;

  services.upower.enable = true;
}

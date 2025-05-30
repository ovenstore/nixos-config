{ settings, ... }:

{
  networking = {
    networkmanager.enable = true;
    hostName = settings.hostname;
  };
}

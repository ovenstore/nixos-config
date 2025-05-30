{ settings, ... }:

{
  users = {
    users.${settings.username} = {
      isNormalUser = true;
      extraGroups = [ "networkmanager" "wheel" ];
    };
  };
}

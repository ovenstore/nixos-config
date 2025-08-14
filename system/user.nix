{ username, ... }:

{
  users.users.${username} = {
    isNormalUser = true;
    extraGroups = [ "audio" "networkmanager" "wheel" ];
  };
}

{ username, ... }:

{
  users.users.${username} = {
    isNormalUser = true;
    extraGroups = [ "audio" "kvm" "libvirtd" "networkmanager" "wheel" ];
  };
}

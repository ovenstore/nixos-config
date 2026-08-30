{ username, ... }:

{
  hjem.users.${username} = {
    user = username;
    directory = "/home/${username}";
    clobberFiles = true;
  };

  imports = [
    ./packages.nix
    ./modules
  ];
}

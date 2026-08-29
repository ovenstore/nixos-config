{ stateVersion, ... }:

{
  nix.settings.experimental-features = [ 
    "nix-command" 
    "flakes" 
  ];

  system.stateVersion = stateVersion;

  nixpkgs.config.allowUnfree = true;
}



{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    hjem = {
      url = "github:feel-co/hjem";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    noctalia = {
      url = "github:noctalia-dev/noctalia";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    noctalia-greeter = {
      url = "github:noctalia-dev/noctalia-greeter";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ self, nixpkgs, ... }:
  let
    system = "x86_64-linux";
    username = "oven";
    homeStateVersion = "26.05";

    hosts = [
      # { hostname = "ThinkPad"; stateVersion = "25.11"; }
      { hostname = "Spectre"; stateVersion = "25.11"; }
    ];

    mkHost = { hostname, stateVersion }:
      nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = { inherit inputs hostname username stateVersion homeStateVersion; };
        modules = [
          ./hosts/${hostname}
          inputs.noctalia-greeter.nixosModules.default
          inputs.hjem.nixosModules.default
          ./hjem
        ];
      };
  in {
    nixosConfigurations = nixpkgs.lib.listToAttrs (map (host: {
      name = host.hostname;
      value = mkHost host;
    }) hosts);
  };
}

{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/master";
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

  outputs = inputs@{ self, nixpkgs, home-manager, ... }:
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
          home-manager.nixosModules.home-manager {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.${username} = import ./home-manager;
            home-manager.extraSpecialArgs = { inherit inputs username homeStateVersion; };
            home-manager.sharedModules = [
              inputs.noctalia.homeModules.default
            ];
          }
        ];
      };
  in {
    nixosConfigurations = nixpkgs.lib.listToAttrs (map (host: {
      name = host.hostname;
      value = mkHost host;
    }) hosts);
  };
}

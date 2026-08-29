{
  description = "Baby's first flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix = {
      url = "github:nix-community/stylix/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ self, stylix, nixpkgs, home-manager, ... }:
  let
    system = "x86_64-linux";
    username = "oven";
    homeStateVersion = "24.11";

    # --------- Host Declarations --------- #
    hosts = [
      { hostname = "ThinkPad"; stateVersion = "24.11"; theme = "emo"; }
      { hostname = "Spectre"; stateVersion = "25.05"; theme = "pink"; }
    ];

    # ---------- System Function ---------- #
    makeSystem = { hostname, stateVersion, theme }: nixpkgs.lib.nixosSystem {
      inherit system;
      specialArgs = {
        inherit inputs hostname username stateVersion theme;
      };
      modules = [
        ./hosts/${hostname}
        stylix.nixosModules.stylix
        home-manager.nixosModules.home-manager {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.${username} = import ./home-manager;
          home-manager.extraSpecialArgs = { inherit username theme homeStateVersion; };
        }
      ];
    };

  in {
    # ---------- nixosConfigurations ---------- #
    nixosConfigurations = builtins.listToAttrs (map (host: {
      name = host.hostname;
      value = makeSystem {
        inherit (host) hostname stateVersion;
        theme = import ./themes/${host.theme}.nix;
      };
    }) hosts);
  };
}


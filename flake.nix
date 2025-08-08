{
  description = "Baby's first flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  
    swww = {
      url = "github:LGFae/swww";
    };
  };

  outputs = inputs@{ self, nixpkgs, home-manager, ... }:
  let
    system = "x86_64-linux";
    username = "oven";
    homeStateVersion = "24.11";

    # --------- Host Declarations --------- #
    hosts = [
      { hostname = "ThinkPad"; stateVersion = "24.11"; theme = "drappuccin"; }
      { hostname = "Spectre"; stateVersion = "25.05"; theme = "drappuccin"; }
    ];

    # ---------- System Function ---------- #
    makeSystem = { hostname, stateVersion, theme }: nixpkgs.lib.nixosSystem {
      system = system;
      specialArgs = {
        inherit inputs hostname username stateVersion theme;
      };
      modules = [
        ./hosts/${hostname}
      ];
    };

    # ---------- Home Function ---------- #
    makeHome = { hostname, theme }: home-manager.lib.homeManagerConfiguration {
      pkgs = import nixpkgs { inherit system; };
      extraSpecialArgs = {
        inherit inputs username homeStateVersion hostname theme;
      };
      modules = [
        ./home-manager
      ];
    };

  in {
    # ---------- nixosConfigurations ---------- #
    nixosConfigurations = builtins.listToAttrs (map (host: {
      name = host.hostname;
      value = makeSystem {
        inherit (host) hostname stateVersion;
        theme = import ./themes/${host.theme}.nix { inherit (nixpkgs) pkgs; };
      };
    }) hosts);

    # ---------- homeConfigurations ---------- #
    homeConfigurations = builtins.listToAttrs (map (host: {
      name = "${username}@${host.hostname}";
      value = makeHome {
        inherit (host) hostname;
        theme = import ./themes/${host.theme}.nix { inherit (nixpkgs) pkgs; };
      };
    }) hosts);
  };
}


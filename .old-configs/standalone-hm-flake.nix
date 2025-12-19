{
  description = "Baby's first flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-25.05";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix = {
      url = "github:nix-community/stylix";
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
      { hostname = "ThinkPad"; stateVersion = "24.11"; theme = "drappuccin"; }
      { hostname = "Spectre"; stateVersion = "25.05"; theme = "mono"; }
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


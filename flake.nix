{
  description = "Baby's first flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix = {
      url = "github:danth/stylix";
    };

    firefox-addons = {
      url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ self, nixpkgs, home-manager, stylix, ... }:
  let
    hostNames = builtins.attrNames (builtins.readDir ./hosts);
    system = "x86_64-linux";

    # ------- System Configuration ------- #
    nixosConfigurations = builtins.listToAttrs (
      map (hostname:
        let
          settings = import ./hosts/${hostname}/settings.nix;
          pkgs = nixpkgs.legacyPackages.${system};
        in {
          name = hostname;
          value = nixpkgs.lib.nixosSystem {
            inherit system;
            modules = [
              ./hosts/${hostname}/configuration.nix
            ];
            specialArgs = {
              inherit settings;
            };
          };
        }
      ) hostNames
    );

    # ---- Home-Manager Configuration ---- #
    homeConfigurations = builtins.listToAttrs (
      map (hostname:
        let
          settings = import ./hosts/${hostname}/settings.nix;
          pkgs = nixpkgs.legacyPackages.${system};
        in {
          name = settings.username;
          value = home-manager.lib.homeManagerConfiguration {
            inherit pkgs;
            modules = [
              ./home-manager/home.nix
              stylix.homeModules.stylix
            ];
            extraSpecialArgs = {
              inherit inputs settings;
            };
          };
        }
      ) hostNames
    );

  in {
    inherit nixosConfigurations homeConfigurations;
  };
}


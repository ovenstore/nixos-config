{
  description = "Baby's first flake";

  # --------- Outputs Definition --------- #
  outputs = inputs@{ self, nixpkgs, home-manager, stylix, ... }: 
  let
    system = "x86_64-linux";
    homeStateVersion = "24.11";
    username = "oven";

    # --------- Host Definitions --------- #
    hosts = [
      { hostname = "ThinkPad"; stateVersion = "24.11"; }
    ];

    # ------- Make System Function ------- #
    makeSystem = { hostname, stateVersion }: nixpkgs.lib.nixosSystem {
      system = system;
      specialArgs = {
        inherit inputs stateVersion hostname username;
      };
  
      modules = [
        ./hosts/${hostname}
      ];
    };
  
  in {
    # ------ System Configurations ------ #
    nixosConfigurations = nixpkgs.lib.foldl' (configs: host:
      configs // {
        "${host.hostname}" = makeSystem {
          inherit (host) hostname stateVersion;
        };
      }) {} hosts;
  
    # ------- Home Configurations ------- #
    homeConfigurations = nixpkgs.lib.foldl' (configs: host:
      configs // {
        "${username}@${host.hostname}" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.${system};

          extraSpecialArgs = {
            inherit inputs homeStateVersion username;
            hostname = host.hostname;
          };

          modules = [
            ./home-manager/home.nix
            stylix.homeModules.stylix
          ];
        };
      }) {} hosts;
  };
  # --------- Inputs Definition --------- #
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
}


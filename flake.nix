{
  description = "Baby's first flake";

  # --------- Outputs Definition --------- #
  outputs = inputs@{ self, nixpkgs, home-manager, stylix, ... }:
  let
    system = "x86_64-linux";

    # --------- Host Definitions --------- #
    hosts = {
      ThinkPad = {
        hostname = "ThinkPad";
        stateVersion = "24.11";

        username = "oven";
        email = "ostory674@gmail.com";

        timezone = "America/Chicago";
        locale = "en_US.UTF-8";

        theme = "purple-dark";
      };
    };

    # ----- System-Creation Function ----- #
    makeSystem = hostConfig: nixpkgs.lib.nixosSystem {
      system = system;

      specialArgs = {
        inherit inputs system;
        settings = hostConfig;
      };

      modules = [ ./hosts/${hostConfig.hostname} ];
    };

    # ------ Home-Creation Function ------ #
    makeHome = hostConfig: home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.${system};

      extraSpecialArgs = {
        inherit inputs system;
        settings = hostConfig;
      };

      modules = [ 
        ./home-manager/home.nix
        stylix.homeModules.stylix
      ];
    };
  in {
    # -------- System Declarations ------- #
    nixosConfigurations = nixpkgs.lib.mapAttrs makeSystem hosts;

    # -------- Home Declarations --------- #
    homeConfigurations = builtins.listToAttrs (
      builtins.map (attrName: 
      let 
        host = hosts.${attrName}; 
      in {
        name = "${host.username}@${host.hostname}";
        value = makeHome host;
      }) (builtins.attrNames hosts)
    ); 
  };

  # --------- Inputs Definition ---------- #
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


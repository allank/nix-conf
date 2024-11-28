{
  description = "Nix Darwin config";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";

    darwin.url = "github:lnl7/nix-darwin";
    darwin.inputs.nixpkgs.follows = "nixpkgs";

    home-manager.url = "github:nix-community/home-manager/master";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

  };

  outputs = inputs@{ self, nixpkgs, darwin, home-manager, ... }: {
    darwinConfigurations = {
      "Allans-MacBook-Pro" = darwin.lib.darwinSystem {
        system = "x86_64-darwin";
        modules = [
          ./configuration.nix
          home-manager.darwinModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
	    users.knownUsers = [ "allank" ];
            users.users.allank = {
              name = "allank";
	      uid = 501;
              home = "/Users/allank";
            };
            home-manager.users.allank = import ./home.nix;
          }
        ];
      };
    };
  };
}

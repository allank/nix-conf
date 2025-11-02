{
  description = "Nix Darwin config";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";

    darwin.url = "github:lnl7/nix-darwin";
    darwin.inputs.nixpkgs.follows = "nixpkgs";

    home-manager.url = "github:nix-community/home-manager/master";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    nix-homebrew.url = "github:zhaofengli/nix-homebrew";

    homebrew-core = {
      url = "github:homebrew/homebrew-core";
      flake = false;
    };
    homebrew-cask = {
      url = "github:homebrew/homebrew-cask";
      flake = false;
    };

    # neovim-nightly-overlay.url = "github:nix-community/neovim-nightly-overlay";
  };

  # outputs = inputs@{ self, nixpkgs, darwin, home-manager, nix-homebrew, homebrew-core, homebrew-cask, neovim-nightly-overlay, ... }: {
  outputs = inputs@{ self, nixpkgs, darwin, home-manager, nix-homebrew, homebrew-core, homebrew-cask, ... }: {
    darwinConfigurations = {
      "Allans-MacBook-Pro" = darwin.lib.darwinSystem {
        system = "x86_64-darwin";
        modules = [
          ./configuration.nix
          home-manager.darwinModules.home-manager
          nix-homebrew.darwinModules.nix-homebrew
          {
            # nixpkgs.overlays = [ neovim-nightly-overlay.overlays.default ];
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
        ({config, ...}: {
          homebrew.taps = builtins.attrNames config.nix-homebrew.taps;
        })
        ];
      };
    };
  };
}

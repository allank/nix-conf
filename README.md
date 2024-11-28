# Personal Nix Config

Minimal steps to a functional machine.

Uses [Nix](https://nixos.org), [nix-darwin](https://github.com/LnL7/nix-darwin), [Home Manager](https://nix-community.github.io/home-manager/) and [Homebrew](https://brew.sh) to bootstrap a new machine.

## Usage

Install Nix using the [Determinate Nix Installer](https://github.com/DeterminateSystems/nix-installer):
`curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install`

Install Home Brew:
`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

Clone this repo and change into the repo folder

Run initial install:
`nix run nix-darwin -- switch --flake ./#Allans-MacBook-Pro`

Subsequent updates can be run using `darwin-rebuild`:
`darwin-rebuild switch --flake ./#Allans-MacBook-Pro`

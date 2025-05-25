{ config, pkgs, ... }:

{
  home.username = "allank";
  home.stateVersion = "24.05";
  home.homeDirectory = "/Users/allank";
  home.file.".config" = {
    source = ../dotconfig;
    recursive = true;
  };
  programs.home-manager.enable = true;

  # CLI tools
  programs.bat.enable = true;
  programs.eza.enable = true;
  programs.ripgrep.enable = true;
  programs.fzf.enable = true;
  programs.jq.enable = true;
  programs.neovim.enable = true;

  # Git configuration
  programs.git = {
    enable = true;
    userName = "allank";
    userEmail = "allan.kent@gmail.com";
    ignores = [
      ".DS_Store"
      "*.pyc"
      ".venv"
    ];
    extraConfig = {
      init.defaultBranch = "main";
    };
  };

  # Shell configuration
  programs.starship = {
    enable = true;
    enableFishIntegration = true;
  };

  programs.fish = {
    enable = true;
    plugins = [
      { name = "grc"; src = pkgs.fishPlugins.grc.src;}
    ];
    shellAliases = {
      ls = "eza --color=always";
      cat = "bat";
      less = "bat";
    };
    loginShellInit = ''
      fish_add_path /nix/var/nix/profiles/default/bin
      fish_add_path ~/.nix-profile/bin
      fish_add_path /etc/profiles/per-user/$USER/bin
      fish_add_path /run/current-system/sw/bin
      fish_add_path /opt/homebrew/bin
    '';
  };
}
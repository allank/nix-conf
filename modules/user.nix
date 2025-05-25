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
  programs.bat = {
    enable = true;
    config = {
      theme = "TwoDark";
    };
  };
  programs.eza.enable = true;
  programs.ripgrep.enable = true;
  programs.fzf = {
    enable = true;
    colors = {
      "bg+" = "#313244";
      "bg" = "#1e1e2e";
      "spinner" = "#f5e0dc";
      "hl" = "#f38ba8";
      "fg" = "#cdd6f4";
      "header" = "#f38ba8";
      "info" = "#cba6f7";
      "pointer" = "#f5e0dc";
      "marker" = "#f5e0dc";
      "fg+" = "#cdd6f4";
      "prompt" = "#cba6f7";
      "hl+" = "#f38ba8";
    };
  };
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

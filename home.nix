{ config, pkgs, ... }:

{
  home.username = "allank";
  home.stateVersion = "24.05";
  home.homeDirectory = "/Users/allank";
  home.file.".config" = {
    source = ./dotconfig;
    recursive = true;
  };
  programs.home-manager.enable = true;

  programs.bat.enable = true;
  programs.eza.enable = true;
  programs.ripgrep.enable = true;
  programs.fzf.enable = true;
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
  programs.jq.enable = true;

  programs.zsh.enable = true;
  programs.zsh.enableCompletion = true;

  programs.zsh.syntaxHighlighting.enable = true;
  programs.zsh.autosuggestion.enable = true;
  programs.zsh.shellAliases = { ls = "eza --color=always"; cat = "bat"; less = "bat"; };

  programs.starship.enable = true;
  programs.starship.enableZshIntegration = true;

  programs.neovim.enable = true;
}

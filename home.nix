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
  # programs.zsh.enable = true;
  # programs.zsh.enableCompletion = true;
  #
  # programs.zsh.syntaxHighlighting.enable = true;
  # programs.zsh.autosuggestion.enable = true;
  # programs.zsh.shellAliases = { ls = "eza --color=always"; cat = "bat"; less = "bat"; };

 # programs.starship.enableZshIntegration = true;

  programs.neovim.enable = true;
}

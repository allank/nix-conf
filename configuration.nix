{ pkgs, ... }:

{
  system.stateVersion = 5;

  fonts.packages = [ pkgs.nerd-fonts.fira-code ];
  programs.zsh.enable = true;
  environment.systemPath = [ "/opt/homebrew/bin" ];
  environment.shells = [ pkgs.zsh pkgs.fish ];
  environment.systemPackages = [ 
    # pkgs.zsh 
    pkgs.fish
    pkgs.tmux
    pkgs.python3Full
    pkgs.uv 
    pkgs.ruff
    pkgs.go
    pkgs.hugo
    pkgs.templ
    pkgs.air
    pkgs.dart-sass
    pkgs.nodejs_23
    pkgs.bun
    pkgs.tailwindcss_4
    pkgs.atac
    pkgs.docker
    pkgs.colima
    pkgs.xh
    pkgs.gitui
    pkgs.dust
    pkgs.yazi
    ];
  homebrew = {
    enable = true;
    onActivation = {
      autoUpdate = true;
      cleanup = "uninstall";
      upgrade = true;
    };
    caskArgs.no_quarantine = true;
    global.brewfile = true;
    casks = [ "discord" "spotify" "whatsapp" "bitwarden" "obsidian" "alfred" "zotero" "ghostty" "firefox" "transmission" "hammerspoon"];
  };
  system.keyboard.enableKeyMapping = true;
  system.keyboard.remapCapsLockToEscape = true;
  system.defaults.dock.orientation = "right";
  system.defaults.dock.tilesize = 32;
  system.defaults.dock.wvous-br-corner = 1;
  system.defaults.finder.ShowPathbar = true;
  system.defaults.finder.ShowStatusBar = true;
  system.defaults.trackpad.TrackpadRightClick = true;
  nix.extraOptions = ''
  experimental-features = nix-command flakes
  '';
}

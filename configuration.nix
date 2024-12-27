{ pkgs, ... }:

{
  system.stateVersion = 5;

  fonts.packages = [ pkgs.nerd-fonts.fira-code ];
  programs.zsh.enable = true;
  environment.systemPath = [ "/opt/homebrew/bin" ];
  environment.shells = [ pkgs.zsh ];
  environment.systemPackages = [ 
    pkgs.zsh 
    pkgs.tmux
    pkgs.python3Full
    pkgs.uv 
    pkgs.ruff
    pkgs.go
    ];
  homebrew = {
    enable = true;
    caskArgs.no_quarantine = true;
    global.brewfile = true;
    casks = [ "discord" "spotify" "whatsapp" "bitwarden" "bruno" "obsidian" "alfred" "zotero" "wezterm" "firefox" "transmission" "ghostty"];
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

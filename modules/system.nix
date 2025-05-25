{ pkgs, ... }:

{
  system.stateVersion = 5;

  fonts.packages = [ pkgs.nerd-fonts.fira-code ];
  
  environment.systemPath = [ "/opt/homebrew/bin" ];
  environment.shells = [ pkgs.zsh pkgs.fish ];
  
  # System preferences
  system.keyboard.enableKeyMapping = true;
  system.keyboard.remapCapsLockToEscape = true;
  system.defaults.dock.orientation = "right";
  system.defaults.dock.tilesize = 32;
  system.defaults.dock.wvous-br-corner = 1;
  system.defaults.finder.ShowPathbar = true;
  system.defaults.finder.ShowStatusBar = true;
  system.defaults.trackpad.TrackpadRightClick = true;
  
  # Nix configuration
  nix.extraOptions = ''
    experimental-features = nix-command flakes
  '';
}
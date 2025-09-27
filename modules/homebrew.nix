{ ... }:

{
  homebrew = {
    enable = true;
    onActivation = {
      autoUpdate = true;
      cleanup = "uninstall";
      upgrade = true;
    };
    caskArgs.no_quarantine = true;
    global.brewfile = true;
    brews = [
      "colima"
    ];
    casks = [ 
      "discord" 
      "spotify" 
      "whatsapp" 
      "bitwarden" 
      "obsidian" 
      "alfred" 
      "zotero" 
      "ghostty" 
      "firefox" 
      "transmission" 
      "hammerspoon"
      "karabiner-elements"
      "nikitabobko/tap/aerospace"
    ];
  };
}

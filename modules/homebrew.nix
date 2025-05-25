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
    ];
  };
}
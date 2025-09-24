{ pkgs, ... }:

{
  programs.zsh.enable = true;
  
  environment.systemPackages = [ 
    pkgs.aerospace
    pkgs.karabiner-elements
    pkgs.fish
    pkgs.tmux
    # Development tools
    pkgs.python3Full
    pkgs.uv 
    pkgs.ruff
    pkgs.go
    pkgs.gopls
    pkgs.nodejs_24
    pkgs.bun
    # CLI utilities
    pkgs.atac
    pkgs.docker
    pkgs.colima
    pkgs.xh
    pkgs.gitui
    pkgs.dust
    pkgs.yazi
  ];
}

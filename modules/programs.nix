{ pkgs, ... }:

{
  programs.zsh.enable = true;
  
  environment.systemPackages = [ 
    pkgs.fish
    pkgs.tmux
    # Development tools
    pkgs.python3Full
    pkgs.uv 
    pkgs.ruff
    pkgs.go
    pkgs.gopls
    pkgs.hugo
    pkgs.templ
    pkgs.air
    pkgs.dart-sass
    pkgs.nodejs_23
    pkgs.bun
    pkgs.tailwindcss_4
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

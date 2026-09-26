{ config, pkgs, lib, ... }:

let
  cfg = config.myOptions.packages;
in
{
  options.myOptions.packages = {
    utilities = lib.mkBoolOpt true;
    apps = lib.mkBoolOpt true;
  };
	
  config.environment.systemPackages = 
    lib.optionals (cfg.utilities) [
      pkgs.age
      pkgs.bat
      pkgs.btop
      pkgs.cifs-utils
      pkgs.curl
      pkgs.fastfetch
      pkgs.git
      pkgs.pciutils
      pkgs.sops
      pkgs.tldr
      pkgs.tmux
      pkgs.tree
      pkgs.unzip
      pkgs.upower
      pkgs.wget 
    ]  
    ++ lib.optionals (cfg.apps) [
      pkgs.alacritty
      pkgs.displaylink
      pkgs.firefox
      pkgs.libreoffice
      pkgs.obsidian
      pkgs.quickshell
      pkgs.steam
      pkgs.tela-icon-theme
      pkgs.vlc
      pkgs.vscode
      pkgs.yazi
    ];
}

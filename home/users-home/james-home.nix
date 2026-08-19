{ pkgs, ... }:

{
  home.username = "james";
  home.homeDirectory = "/home/james";
  home.stateVersion = "26.05";
  home.packages = with pkgs; [];

  imports = [
    ../alacritty
    ../fastfetch
    ../neovim
    ../rofi
    ../git.nix
  ];

  programs.fzf.enable = true;
}

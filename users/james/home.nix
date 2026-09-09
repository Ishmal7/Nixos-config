{ pkgs, ... }:

{
  home.username = "james";
  home.homeDirectory = "/home/james";
  home.stateVersion = "26.05";
  home.packages = with pkgs; [ discord spotify ];

  imports = [
    ../../modules/home/alacritty
    ../../modules/home/fastfetch
    ../../modules/home/neovim
    ../../modules/home/rofi
    ../../modules/home/git.nix
    ../../modules/home/hypr-de/default.nix
    ../../modules/home/noctalia/default.nix
  ];

  programs.fzf.enable = true;
}

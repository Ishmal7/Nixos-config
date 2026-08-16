{ pkgs, config, ... }:

{
  home.username = "james";
  home.stateVersion = "26.05";

  imports = [
    ./alacritty
    ./fastfetch
    ./neovim
    ./rofi
    ./git.nix
  ];

  programs.fzf.enable = true;
}

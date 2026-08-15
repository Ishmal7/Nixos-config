{ pkgs, config, ... }:

{
  home.username = "james";
  home.stateVersion = "26.05";

  imports = [
    ./alacritty
    ./fastfetch
    ./neovim
    ./rofi
  ];

  programs.fzf.enable = true;
}

{ pkgs, config, ... }:

{
  home.username = "james";
  home.stateVersion = "26.05";

  imports = [
    ./alacritty
    ./fastfetch
    ./neovim
    ./rofi
<<<<<<< HEAD
=======
    ./git.nix
>>>>>>> 0882cfd (Fixing permissions Issues)
  ];

  programs.fzf.enable = true;
}

{ config, pkgs, ... }:

{
  users.users."james" = {
    isNormalUser = true;
    description = "James";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      mgba
      discord
      spotify
      obs-studio
      deluge
    ];
  };

  home.username = "james";
  home.homeDirectory = "home/james";
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


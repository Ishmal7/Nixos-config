{ config, pkgs, ... }:

{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    # Command Line Utilities
    wget
    curl
    btop
    fastfetch
    tmux
    tree
    bat

    # Display
    quickshell

    #Icon and Theme
    tela-icon-theme

    # System Utils
    upower
    displaylink
    unzip
    pciutils
    tldr
    git
    age

    # Apps
    obsidian
    alacritty
    steam
    kitty
    neovim
    firefox
    libreoffice
    vscode
    vlc
    yazi
  ];
}

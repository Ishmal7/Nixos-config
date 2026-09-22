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
    sops
    age

    # Display
    quickshell

    #Icon and Theme
    tela-icon-theme

    # System Utils
    upower
    displaylink
    unzip
    pciutils
    cifs-utils
    tldr
    git

    # Apps
    obsidian
    alacritty
    steam
    firefox
    libreoffice
    vscode
    vlc
    yazi
  ];
}

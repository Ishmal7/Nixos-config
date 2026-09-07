{ config, pkgs, ... }:

{
  nix.settings.experimental-features = ["nix-command" "flakes"];

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

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
    opencode-desktop
    vlc
    yazi
  ];

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;

  # Nixos Version
  system.stateVersion = "26.05";

}

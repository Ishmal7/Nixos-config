{pkgs, config, ...}:

{  
  imports = [
    ./fastfetch.nix
    ./alacritty.nix
    ./git.nix
    ./neovim.nix
  ];
}

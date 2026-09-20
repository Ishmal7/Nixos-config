{pkgs, inputs, ... }:

{
  home.username = "james";
  home.homeDirectory = "/home/james";
  home.stateVersion = "26.11";
  home.packages = with pkgs; [ discord spotify ];

  imports = [
    inputs.noctalia.homeModules.default
    ../../home/programs/default.nix
    ../../home/hypr-de/default.nix
    ../../home/noctalia/default.nix
  ];

  programs.fzf.enable = true;
}

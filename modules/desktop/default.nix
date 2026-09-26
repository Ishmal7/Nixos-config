{ config, lib, inputs, ...}:
let
  cfg = config.myOptions.desktop;
in
{
  imports = [
    ./hypr-de/hyprland.nix
    ./cosmic.nix
    ./sddm.nix
    ./plymouth.nix
  ];

  options.myOptions.desktop = lib.mkOption {
    type = lib.types.enum [ "hyprland" "cosmic" "none" ];
    default = "hyprland";
    description = "Desktop environment to install.";
  };
}

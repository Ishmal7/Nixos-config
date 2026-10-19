{ config, lib, inputs, ...}:

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

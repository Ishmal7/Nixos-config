{config, pkgs, ...}:
{
  imports = [
    ./hardware-configuration.nix
    ../../modules/core/default.nix
    ../../modules/hardware/default.nix
    ../../modules/services/default.nix
    ../../modules/desktop/default.nix
  ];

  networking.hostName = "nuc";
  system.stateVersion = "26.11";

  # Toggle settings
  myOptions.desktop = "cosmic";
  myOptions.packages.apps = true;

}

{ ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../../modules/core/default.nix
    ../../modules/hardware/default.nix
    ../../modules/services/default.nix
    ../../modules/desktop/default.nix
  ];

  system.stateVersion = "26.11";

  # Toggle settings
  myOptions = {
    desktop = "cosmic";
    packages.apps = true;
    hardware.nvidia.enable = false;
    hardware.displaylink.enable = true;
  };
}

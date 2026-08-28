{config, pkgs, ...}:
{
  imports = [
    ./hardware-configuration.nix
    ../../modules/core/default.nix
    ../../modules/hardware/default.nix
    ../../modules/services/default.nix
  ];

  #networking.hostName = "vivobook";
  #system.stateVersion = "26.05";  

}



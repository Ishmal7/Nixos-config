{config, pkgs, ...}:
{
  imports = [
    ./hardware-configuration.nix
    ../../modules/core/default.nix
    ../../modules/hardware/default.nix
    ../../modules/services/default.nix
    ../../modules/desktop/default.nix
  ];

  fileSystems."/mnt/DATA" = {
    device = "/dev/disk/by-uuid/3CFA8066FA801DF0";
    fsType = "ntfs";
    options = [ "defaults" "nofail" ]; 
  };

  networking.hostName = "vivobook";
  system.stateVersion = "26.11";  

}



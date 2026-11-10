{ ... }:

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

  system.stateVersion = "26.11";  

  # Toggle settings
  myOptions = {
    desktop = "hyprland";
    packages.apps = true;
    gaming.enable = true;
    hardware.nvidia = { enable=true; driver="legacy_580"; open=false;};
  };
}



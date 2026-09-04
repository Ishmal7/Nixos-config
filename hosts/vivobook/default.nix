{config, pkgs, ...}:
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

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;

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
  #system.stateVersion = "26.05";  

}



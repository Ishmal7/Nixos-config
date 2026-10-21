{config, pkgs, ...}:
{

  #Bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  #for evdi display manager
  boot.extraModulePackages = [config.boot.kernelPackages.evdi];
  boot.kernelModules = [ "evdi" ];

  #kernel
  boot.kernelPackages = pkgs.linuxPackages_latest;

}

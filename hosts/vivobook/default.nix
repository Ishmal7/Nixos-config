{config, pkgs, ...}:
{
  imports = [
    ./hardware-configuration.nix
    ../../modules/audio.nix
    ../../modules/boot.nix
    ../../modules/displaylink.nix
    ../../modules/fonts.nix
    ../../modules/locale.nix
    ../../modules/nvidia.nix
    ../../modules/tailscale.nix
    ../../modules/networking.nix
  ];

  #networking.hostName = "vivobook";
  #system.stateVersion = "26.05";  

}



{ config, lib, pkgs, ... }:

let
  cfg = config.myOptions.hardware.displaylink;
in

{
  options.myOptions.hardware.displaylink = {
    enable = lib.mkEnableOption "displaylink";
  };
  
  config = lib.mkIf cfg.enable {
    
    environment.systemPackages = [ pkgs.displaylink ];

    # Use the built-in NixOS module (handles evdi, systemd, and drivers)
    services.xserver.videoDrivers = [ "displaylink" "modesetting" ];
  };
}


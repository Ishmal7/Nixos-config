{ config, lib, ... }:

let
  cfg = config.myOptions.hardware.nvidia;
in

{
  options.myOptions.hardware.nvidia = {
    enable = lib.mkEnableOption"proprietary NVIDIA driver";

    driver = lib.mkOption{
    type = lib.types.enum["stable" "latest" "legacy_580"];
    default = "stable"
    description = "Driver branch, matching a name under boot.kernelPackages.nvidiaPackages.";
    };

    open = lib.mkOption {
    type = lib.types.bool;
    default = false;
    description = "Use the open kernel modules. Only supported on Turing (GTX 16xx / RTX 20xx) and newer.";
    };
  };
 
  config = lib.mkIf cfg.enable {
    services.xserver.videoDrivers = [ "nvidia" ];
 
    hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = false;
    nvidiaSettings = true;
    open = cfg.open;
    package = config.boot.kernelPackages.nvidiaPackages.${cfg.driver};
    };
  };
}


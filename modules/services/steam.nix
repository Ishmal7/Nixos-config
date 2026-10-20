{pkgs, config, lib, ...}:

let
  cfg = config.myOptions.gaming;
in
{
  options.myOptions.gaming= {
    enable = lib.mkEnableOption "gaming";
  };

  config = lib.mkIf cfg.enable {

    programs.steam = { 
      enable = true;
      remotePlay.openFirewall = false;
      dedicatedServer.openFirewall = false;

      extraCompatPackages = with pkgs; [
        proton-ge-bin
      ];
    };

    programs.gamemode.enable = true;

    hardware.graphics = {
      enable = true;
      enable32Bit = true;
    };
  };
}

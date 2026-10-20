{pkgs, config, ...}:

{
  option.gaming= {
    enable = lib.mkEnableOption "gaming";
  };

  config = lib.mkIF config.gaming {

    programs.steam = 
      enable = true;
      remotePlay.openFirewall = false;
      dedicatedServer.openFirewall = false;
  
    programs.gamemode.enable = true;

    programs.steam.extraCompatPackages = with pkgs; [
      proton-ge-bin
    ];

    hardware.graphics.enable = true;
    hardware.graphics.enable32Bit = true;
  }
}

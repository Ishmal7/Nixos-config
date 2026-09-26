{ pkgs, config, lib, ... }:
{
  config = lib.mkIf (config.myOptions.desktop == "hyprland") {
    environment.systemPackages = with pkgs; [
      sddm-chili-theme
      sddm-astronaut
      qt5.qtgraphicaleffects
    ];

    #services.xserver.enable = true;
    services.displayManager.sddm = {
      enable = true;
      wayland.enable = true;
      theme = "sddm-astronaut-theme";
      extraPackages = [ pkgs.sddm-astronaut ];
    };
  };
}

{pkgs, ...}:

{
  environment.systemPackages = with pkgs; [
    sddm-chili-theme
    sddm-astronaut
    qt5.qtgraphicaleffects
  ];

  #services.xserver.enable = true;
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
    theme = "sddm-astronaut";
  };
}

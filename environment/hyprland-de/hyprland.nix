{config, pkgs, ...}:

{
  # Enable Hyprland on NixOS
  programs.hyprland = {
    enable = true;
    # nvidiaPatches = true; #No longer needed
    xwayland.enable = true;
  };

  # Background metrics daemons requiered by Noctalia
  services.upower.enable = true;
  services.power-profiles-daemon.enable = true;

  environment.sessionVariables = {
    # If pointer goes invisible
    WLR_NO_HARDWARE_CURSORS = "1";
    # Hint electron apps to use wayland
    NIXOS_OZONE_WL = "1";
  };

  environment.systemPackages = with pkgs; [
    noctalia-shell
  ];


  #hardware = {
  #  # graphics
  #  graphics.enable = true;
  #  # Needed by most Wayland compositors
  #  nvidia.modesetting.enable = true;
  #};
}

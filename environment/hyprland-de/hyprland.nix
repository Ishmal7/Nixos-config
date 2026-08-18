{config, pkgs, ...}:

{
  # Enable Hyprland on NixOS
  programs.hyprland = {
    enable = true;
    # nvidiaPatches = true; #No longer needed
    xwayland.enable = true;
  };

  # Login manager
  services.greetd = {
    enable = true;
    settings.default_session.command =
      "${pkgs.tuigreet}/bin/tuigreet --time --cmd Hyprland";
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

  # Needed for file pickers, screen sharing
  xdg.portal = {
    enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-hyprland
      pkgs.xdg-desktop-portal-gtk
    ];
  };


  hardware = {
    # graphics
    graphics.enable = true;
    # Needed by most Wayland compositors
    nvidia.modesetting.enable = true;
  };
}

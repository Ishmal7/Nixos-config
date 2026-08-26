{config, pkgs, ...}:

{

  programs.hyprland = {
    enable = true;
    withUWSM = true; # recommended for most users
    xwayland.enable = true; # Xwayland can be disabled.
  };

  services.displayManager.enable = true;

  #services.greetd = {
  #  enable = true;
  #  settings = {
  #    default_session = {
  #      user = "greeter";
  #      command = "${tuigreetPkg}/bin/tuigreet --time --remember --remember-user-session --sessions ${config.services.displayManager.sessionData.desktops}/share/wayland-sessions";
  #    };  
  #  };
  #};

  # Needed for file pickers, screen sharing
  xdg.portal = {
    enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-hyprland
      pkgs.xdg-desktop-portal-gtk
    ];
  };


 # IF Using the Development version
 # programs.hyprland = {
 #   enable = true;
 #   # set the flake package
 #   package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
 #   # make sure to also set the portal package, so that they are in sync
 #   portalPackage = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;
 # };
}


{config, pkgs, ...}:

{

  programs.hyprland = {
    enable = true;
    withUWSM = true; # recommended for most users
    xwayland.enable = true; # Xwayland can be disabled.
  };

 # IF Using the Development version
 # programs.hyprland = {
 #   enable = true;
 #   # set the flake package
 #   package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
 #   # make sure to also set the portal package, so that they are in sync
 #   portalPackage = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;
  };
}


{config, pkgs, ...}:

{

  #programs.hyprland = {
  #  enable = true;
  #  withUWSM = true; # recommended for most users
  #  xwayland.enable = true; # Xwayland can be disabled.
  #};

  services.displayManager.enable = true;

  wayland.windowManager.hyprland = {
    enable = true;
 
    # 1. Inform Home Manager that you are using Lua syntax instead of Hyprlang (.conf)
    configType = "lua"; #
 
    # 2. Tell Home Manager to read the local hyprland.lua file into the generation system
    extraConfig = builtins.readFile ../../home/hypr-de/hyprland.lua; #
  };


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
}


{pkgs, config, ...}:
{
 services.displayManager.enable = true;

  wayland.windowManager.hyprland = {
    enable = true;

    # 1. Inform Home Manager that you are using Lua syntax instead of Hyprlang (.con>
    configType = "lua"; #

    # 2. Tell Home Manager to read the local hyprland.lua file into the generation s>
    extraConfig = builtins.readFile ./hyprland.lua; #
  };
}

{pkgs, config, ...}:
{
  wayland.windowManager.hyprland = {
    enable = true;
    package = null;
    systemd.enable = false;
    portalPackage = null;
    configType = "lua"; # 🌟 Explicitly targeting modern Hyprland Lua structures
    extraConfig = builtins.readFile ./hyprland.lua;
  };
}

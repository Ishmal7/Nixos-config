{pkgs, config, ...}:
{
  wayland.windowManager.hyprland = {
    enable = true;
    portalPackage = null;
    configType = "lua"; # 🌟 Explicitly targeting modern Hyprland Lua structures
    extraConfig = builtins.readFile ./hyprland.lua;
    systemd.variables = ["--all"];
  };
}

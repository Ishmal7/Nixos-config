{ pkgs, ... }:

{
  home.username = "james";
  home.homeDirectory = "/home/james";
  home.stateVersion = "26.05";

  wayland.windowManager.hyprland = {
  enable = true;

    settings = {
      monitor = [ ", preferred, auto, auto" ];

      input = {
        kb_layout = "us";
        kb_options = "caps:escape";  # Caps Lock as Escape
        follow_mouse = 1;
        touchpad = {
          natural_scroll = true;
          disable_while_typing = true;
          tap-to-click = true;
        };
      };

      general = {
        gaps_in = 5;
        gaps_out = 15;
        border_size = 2;
        "col.active_border" = "rgba(89b4faee)";
        "col.inactive_border" = "rgba(31324455)";
        resize_on_border = true;
        layout = "dwindle";
      };

      decoration = {
        rounding = 10;
        blur = {
          enabled = true;
          size = 6;
          passes = 2;
        };
      };

      dwindle.preserve_split = true;

      misc = {
        force_default_wallpaper = 0;
        disable_hyprland_logo = true;
      };

      gestures.workspace_swipe = true;

      exec-once = [ "kitty" ];
    };
  };
}

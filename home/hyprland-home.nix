{ pkgs, ... }:

{
  home.username = "james";
  home.homeDirectory = "/home/james";
  home.stateVersion = "26.05";

  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      "exec-once" = [ "noctalia-shell" ];
      layerrule = [
        "name:noctalia"
        "match:namespace=noctalia-background-.*$"
        "ignore_alpha=0.5"
        "blur=true"
      ];
      bind = [ "$mainMod, D, exec, noctalia-shell ipc call launcher toggle" ];
    };
  };
}

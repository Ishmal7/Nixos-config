{pkgs, ...}:

{
  programs.rofi = {
    enable = true;
    package = pkgs.rofi; 
    font = "FiraCode Nerd Font 12";
    plugins = [ pkgs.rofi-emoji ];
    theme = ./themes/Monokai.rasi;
    extraConfig = {
      modi = "drun,window,run";
      icon-theme = "Adwaita";
      show-icons = true;
      drun-display-format = "{icon} {name}";
    };
  };
}

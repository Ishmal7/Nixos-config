{ ... }:
let
  color = import ../color/color.nix;
in {
  programs.alacritty = {
    enable = true;
    theme = "marine_dark";
    settings = {
      window.opacity = 0.8;
      colors = {
        primary = {
          background = color.background;
          foreground = color.foreground;
        };
        cursor = {
          text   = color.background;
          cursor = color.foreground;
        };
        selection = {
          text       = color.background;
          background = color.foreground;
        };
        normal = color.normal;
        bright = color.bright;

        draw_bold_text_with_bright_colors = false;
      };
      font.size = 14.0;
    };
  };
}

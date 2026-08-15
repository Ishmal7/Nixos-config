{pkgs, config, inputs, ...}:

{ 
  # 1. Enable the COSMIC Desktop Environment Module
  services.desktopManager.cosmic.enable = true;
  
  # Use cosmic-greeter as your display manager (supports picking Hyprland or COSMIC)
  services.displayManager.cosmic-greeter.enable = true;
  
  # Recommended Optimization from NixOS wiki
  services.system76-scheduler.enable = true;

  programs.firefox.preferences = {
    # disable libadwaita theming for Firefox
    "widget.gtk.libadwaita-colors.enabled" = false;
  };
}

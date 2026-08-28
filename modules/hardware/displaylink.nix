{ config, pkgs, ... }:

{
  # Enable the proprietary DisplayLink driver blob
  nixpkgs.config.allowUnfree = true;

  # Use the built-in NixOS module (handles evdi, systemd, and drivers)
  services.xserver.videoDrivers = [ "displaylink" "modesetting" ];

  # Ensure Wayland compatibility for KDE Plasma
  services.displayManager.sddm.wayland.enable = true;
}


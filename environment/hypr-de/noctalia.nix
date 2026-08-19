{ inputs, pkgs, ... }:
{
  programs.noctalia.systemd.enable = true

  environment.systemPackages = [
    inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}

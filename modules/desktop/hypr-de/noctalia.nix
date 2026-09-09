{ inputs, pkgs, ... }:
{
  programs.noctalia = {
    systemd.enable = true;
    settings.include = {
      files = [
        "../../home/hypr-de/noctalia/bar.toml"
	"../../home/hypr-de/noctalia/dock.tom"
      ];
    };  
  };

  environment.systemPackages = [
    inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}

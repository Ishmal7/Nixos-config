{pkgs, config, ...}:

{
  users.users."james" = {
    isNormalUser = true;
    description = "James";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      mgba
      discord
      spotify
      obs-studio
    ];
  };
}

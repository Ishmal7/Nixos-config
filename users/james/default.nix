{ config, pkgs, ... }:

{
  users.users."james" = {
    isNormalUser = true;
    uid = 1000;
    description = "James";
    extraGroups = [ "networkmanager" "wheel" ];
  };
}


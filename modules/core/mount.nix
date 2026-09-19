# configuration.nix
{ config, pkgs, ... }:

{
  fileSystems."/mnt/truenas/personal" = {
    device = "//192.168.0.158/personal_data"; # Replace with your NAS IP and Share
    fsType = "cifs";
    options = let
      # Best practice flags: prevents NixOS from hanging on boot if the NAS is offline
      automount_opts = "x-systemd.automount,noauto,x-systemd.idle-timeout=60,x-systemd.device-timeout=5s,x-systemd.mount-timeout=5s";
    in [
      "${automount_opts}"
      "credentials=${config.sops.secrets.truenas_smb.path}"
      "uid=1000" # Maps file ownership to your primary NixOS user ID
      "gid=100"  # Maps group ownership to 'users'
    ];
  };
}


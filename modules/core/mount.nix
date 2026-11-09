# modules/core/mount.nix
{ config, ... }:

let
  user = config.users.users.james;

  # Best practice flags: prevents NixOS from hanging on boot if the NAS is offline.
  automountOpts = "x-systemd.automount,noauto,x-systemd.idle-timeout=60,x-systemd.device-timeout=5s,x-systemd.mount-timeout=5s";

  mkOptions = group: [
    automountOpts
    "credentials=${config.sops.secrets.truenas_smb.path}"
    "uid=${toString user.uid}"
    "gid=${toString group.gid}"
    # Group members can read and write; everyone else has no access.
    "file_mode=0660"
    "dir_mode=0770"
  ];
in
{
  # Each mount has its own group so access can be granted independently.
  users.groups.truenas-personal = { gid = 3000; };
  users.groups.truenas-media = { gid = 3001; };

  fileSystems."/mnt/truenas/personal" = {
    device = "//192.168.0.158/personal_data";
    fsType = "cifs";
    options = mkOptions config.users.groups.truenas-personal;
  };

  fileSystems."/mnt/truenas/media" = {
    device = "//192.168.0.158/Media";
    fsType = "cifs";
    options = mkOptions config.users.groups.truenas-media;
  };
}

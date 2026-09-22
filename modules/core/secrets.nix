{ config, pkgs, ... }: {

  # Ensure sops knows where your master encrypted file is
  sops.defaultSopsFile = ../../secrets/Nas.yaml;
  sops.defaultSopsFormat = "yaml";

  # Declare the secret string to be parsed into a local physical file
  sops.secrets.truenas_smb = {
    # Optional: If your SMB share requires access by a specific user/group, set it here.
   mode = "0600";
  };

  sops.secrets.github_key = {
    sopsFile = ../../secrets/github.yaml; # remove this line if you added the key to Nas.yaml instead
    owner = "james";
    mode = "0400";
  };
}


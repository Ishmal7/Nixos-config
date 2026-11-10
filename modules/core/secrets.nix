{ config, pkgs, ... }: 

{
  # Ensure sops knows where your master encrypted file is
  sops = {
    defaultSopsFile = ../../secrets/Nas.yaml;
    defaultSopsFormat = "yaml";
    age.sshKeyPaths = [ "/etc/ssh/ssh_host_ed25519_key" ];
  };

  # Truenas SMB SHare 
  sops.secrets.truenas_smb = {
    mode = "0600";
  };

  # Sops Github Secret
  sops.secrets.github = {
    sopsFile = ../../secrets/github.yaml;
    key = "github_key";
    owner = "james";
    mode = "400";
  };
}


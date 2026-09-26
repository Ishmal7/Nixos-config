{ osConfig, ... }: {
  programs.ssh = {
    enable = true;
    settings."*" = {
      AddKeysToAgent = "no";
      Compression = false;
      ControlMaster = "no";
      ControlPath = "~/.ssh/master-%r@%n:%p";
      ControlPersist = "no";
      ForwardAgent = false;
      HashKnownHosts = false;
      ServerAliveCountMax =  3;
      ServerAliveInterval = 0;
      UserKnownHostsFile = "~/.ssh/known_hosts";
    };

    settings."github.com" = {
      identityFile = osConfig.sops.secrets.github_key.path;
      identitiesOnly = true;
    };
  };
}

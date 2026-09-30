{ pkgs, ... }: {
  programs.ssh = {
    enable = true;

    settings."*" = {
      AddKeysToAgent = "yes";
      Compression = false;
      ControlMaster = "no";
      ControlPath = "~/.ssh/master-%r@%n:%p";
      ControlPersist = "no";
      ForwardAgent = false;
      HashKnownHosts = false;
      ServerAliveCountMax = 3;
      ServerAliveInterval = 0;
      UserKnownHostsFile = "~/.ssh/known_hosts";
    };
  };
}

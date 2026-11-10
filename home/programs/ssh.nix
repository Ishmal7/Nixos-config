{ osConfig, ... }:

{
  services.ssh-agent.enable = true;

  programs.ssh = {
    enable = true;
    enableDefaultConfig = false;

    settings."github.com" = {
      HostName = "github.com";
      User = "git";
      IdentityFile = osConfig.sops.secrets.github_auth.path;
      IdentitiesOnly = "yes";
    };

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

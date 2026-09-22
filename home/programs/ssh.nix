{ osConfig, ... }: {
  programs.ssh = {
    enable = true;
    settings."github.com" = {
      identityFile = osConfig.sops.secrets.github_key.path;
      identitiesOnly = true;
    };
  };
}

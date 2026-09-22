{ osConfig, ... }: {
  programs.ssh = {
    enable = true;
    matchBlocks."github.com" = {
      identityFile = osConfig.sops.secrets.github_key.path;
      identitiesOnly = true;
    };
  };
}

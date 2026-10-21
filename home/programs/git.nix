{config, pkgs, osConfig, ...}:

{
  programs.git = {
    enable = true;
    signing = {
      signByDefault = true;
      format = "ssh";
      key = osConfig.sops.secrets.github.path;
    };


    settings = {
      init.defaultBranch = "main";
      user = {
        name = "Ishmal7";
        email = "jkearns10012@gmail.com";
      };
    };
  };
}

{config, pkgs, ...}: {
  programs.git = {
    enable = true;

    settings = {
      init.defaultBranch = "main";
      user = {
        name = "Ishmal7";
        email = "jkearns10012@gmail.com";
      };
    };
  };
}

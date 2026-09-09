{...}: {
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Ishmal7";
        email = "jkearns10012@gmail.com";
      };
      init.defaultBranch = "main";
    };
  };
}

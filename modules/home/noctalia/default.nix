{ config, pkgs, ... }: {
  programs.noctalia = {
    enable = true;
    settings = {
      include = {
        files = [
          "./bar.toml"
          "./dock.toml"
        ];
      };
    };
  };
}

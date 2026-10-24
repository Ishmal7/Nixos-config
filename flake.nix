{
  description = "My NixOS System and Home Manager Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    sops-nix = {
      url = "github:Mic92/sops-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };   

    noctalia = {
      url = "github:noctalia-dev/noctalia";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, sops-nix, ... }@inputs:
  let
    # Extend the lib nixpkgs with custom helpers in ./lib/default
    lib = nixpkgs.lib // (import ./lib { lib = nixpkgs.lib; });

    # mkHost with inputs and libs already included
    mkHost = import ./lib/mkHost.nix { inherit inputs lib; root = ./.; };

    hosts = lib.filterAttrs
      (name: type: type == "directory" && builtins.pathExists ./hosts/${name}/default.nix)
      (builtins.readDir ./hosts);

    # defaults for every host; an optional hosts/<name>/meta.nix can override them
    hostArgs = name:
      let metaFile = ./hosts/${name}/meta.nix;
      in { users = [ "james" ]; }
         // lib.optionalAttrs (builtins.pathExists metaFile) (import metaFile);
  in {
    nixosConfigurations = lib.mapAttrs (name: _: mkHost name (hostArgs name)) hosts;
  };
}


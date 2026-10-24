# hosts/mkHost.nix
{ inputs, lib, root }:

name: { system ? "x86_64-linux", users }:

inputs.nixpkgs.lib.nixosSystem {
  inherit system;
  specialArgs = { inherit inputs lib; };

  modules = [
    inputs.sops-nix.nixosModules.sops
    inputs.home-manager.nixosModules.home-manager
    {
      networking.hostName = name;

      home-manager = {
        useGlobalPkgs = true;
        useUserPackages = true;
        backupFileExtension = "backup";
        extraSpecialArgs = { inherit inputs; };
        users = lib.genAttrs users (u: {
          imports = [ (root + "/users/${u}/home.nix") ];
        });
      };
    }
    (root + "/hosts/${name}/default.nix")
  ]
  ++ map (u: root + "/users/${u}/default.nix") users;
}

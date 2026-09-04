{
  description = "My NixOS System and Home Manager Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    #hyprland = {
    #  url = "github:hyprwm/hyprland";
    #};

    noctalia = {
      url = "github:noctalia-dev/noctalia";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs:
  let
    sharedModules = [
      # ./configuration.nix
      ./hosts/vivobook/default.nix
      ./users/james/default.nix
      home-manager.nixosModules.home-manager
      {
        home-manager.useGlobalPkgs = true;
        home-manager.useUserPackages = true;
        home-manager.backupFileExtension = "backup";
      }    
    ];
  in {
    nixosConfigurations = {
      jkearns-nixos = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs; };
        modules = sharedModules ++ [
          home-manager.nixosModules.home-manager
          {
            home-manager.users.james = { 
              imports = [
                ./users/james/home.nix
              ];
            };
          }
        ];
      };    
    };
  };
}

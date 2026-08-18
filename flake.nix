{
  description = "My NixOS System and Home Manager Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    noctalia = {
      url = "github:noctalia-dev/noctalia-shell";
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
      ./configuration.nix
      home-manager.nixosModules.home-manager
      {
        home-manager.useGlobalPkgs = true;
        home-manager.useUserPackages = true;
        home-manager.backupFileExtension = "backup";
      }    
    ];
  in {
    nixosConfigurations = {
      cosmic-nix = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = sharedModules ++ [
          ./hosts/vivobook/hardware-configuration.nix
          ./environment/cosmic-de/cosmic.nix
          ./users/james.nix
          home-manager.nixosModules.home-manager
          {
            home-manager.users.james = { 
              imports = [
                ./home/cosmic-home.nix
                ./home/users-home/james-home.nix
              ];
            };
          }
        ];
      };

      hyprland-nix = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs; };
        modules = sharedModules ++ [
          ./hosts/vivobook/hardware-configuration.nix
          ./environment/hyprland-de/hyprland.nix
          ./modules/nvidia.nix
          ./environment/sddm.nix
          ./users/james.nix
          ./environment/noctalia.nix
          home-manager.nixosModules.home-manager
          {

            home-manager.extraSpecialArgs = { inherit inputs; };

            home-manager.users.james = {
              imports = [
                ./home/hyprland-home.nix
                ./home/noctalia-home.nix
                ./home/users-home/james-home.nix
              ];
            };
          }
        ];
      };    
    };
  };
}

{
  description = "My NixOS System and Home Manager Flake";

  inputs = {
<<<<<<< HEAD
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";  
=======
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";

    agenix.url = "github:ryantm/agenix";  
>>>>>>> 0882cfd (Fixing permissions Issues)
    
    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

<<<<<<< HEAD
  outputs = { self, nixpkgs, home-manager, ... }@inputs: {
=======
  outputs = { self, nixpkgs, home-manager, agenix, ... }@inputs: {
>>>>>>> 0882cfd (Fixing permissions Issues)
    nixosConfigurations = {
     
      cosmic-nix = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
<<<<<<< HEAD
        modules = [
          ./configuration.nix
          ./profiles/graphical/cosmic-de/cosmic.nix
=======
        specialArgs = { inherit inputs; };
        modules = [
          ./configuration.nix
          ./environment/cosmic-de/cosmic.nix
          agenix.nixosModules.default
>>>>>>> 0882cfd (Fixing permissions Issues)
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.backupFileExtension = "backup";
            home-manager.users.james = import ./home/home.nix;
          }
        ];
      };

      hyprland-nix = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
<<<<<<< HEAD
        modules = [
          ./configuration.nix
          ./profiles/graphical/hyprland-de/hyprland.nix
=======
        specialArgs = { inherit inputs; };
        modules = [
          ./configuration.nix
          ./environment/hyprland-de/hyprland.nix
          agenix.nixosModules.default
>>>>>>> 0882cfd (Fixing permissions Issues)
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.backupFileExtension = "backup";
            home-manager.users.james = import ./home/home.nix;
          }
        ];
      };    
    };
  };
}
    

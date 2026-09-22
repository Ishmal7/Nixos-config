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
    sharedModules = [
      sops-nix.nixosModules.sops
      home-manager.nixosModules.home-manager
      {
        home-manager.useGlobalPkgs = true;
        home-manager.useUserPackages = true;
        home-manager.backupFileExtension = "backup";
	home-manager.extraSpecialArgs = { inherit inputs; };
      }    
    ];
  in {
    nixosConfigurations = {
      vivobook = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs; };
        modules = sharedModules ++ [
	  ./hosts/vivobook/default.nix
	  ./users/james/default.nix
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

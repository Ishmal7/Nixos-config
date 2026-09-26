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
    # Create inheritable system
    system = "x86_64-linux";

    # Extend the lib nixpkgs with custom helpers in ./lib/default
    lib = nixpkgs.lib // (import ./lib { lib = nixpkgs.lib; });
    
    # shares sops and home-manager
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
        inherit system;
        specialArgs = { inherit inputs lib; };
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
      nuc = nixpkgs.lib.nixosSystem {
        inherit system;
	specialArgs = { inherit inputs lib; };
        modules = sharedModules ++ [
	  ./hosts/nuc/default.nix
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

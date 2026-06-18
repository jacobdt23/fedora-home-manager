{
  description = "Jacob's Home Manager Flake";

  inputs = {
    # We are using the bleeding-edge unstable branch for the freshest packages
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    
    home-manager = {
      url = "github:nix-community/home-manager";
      # This ensures Home Manager uses the exact same nixpkgs version we defined above
      inputs.nixpkgs.follows = "nixpkgs"; 
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }: 
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      homeConfigurations."jacob" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;

        # This points to your existing home.nix file!
        modules = [ ./home.nix ];
      };
    };
}

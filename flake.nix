{
  description = "My darwin system";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    darwin.url = "github:lnl7/nix-darwin/master";
    darwin.inputs.nixpkgs.follows = "nixpkgs";
    home-manager.url = "github:nix-community/home-manager";
  };

  outputs = { self, darwin, nixpkgs, home-manager }: {

    darwinConfigurations."Leis-MacBook-Pro" = darwin.lib.darwinSystem {
      system = "aarch64-darwin";
      modules = [
        ./configuration.nix
        home-manager.darwinModule {
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            users.treee = {
              imports = [
                ./home
              ];
            };
          };
        }
      ];
    };
  };
}

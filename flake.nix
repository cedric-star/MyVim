{
  description = "My nixvim configuration";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    flake-utils.url = "github:numtide/flake-utils";
  };
  
  outputs = { nixvim, flake-utils, nixpkgs, self, ... }@inputs:
    let
      # Create the homeManagerModule outside of eachDefaultSystem
      homeManagerModule = { config, lib, pkgs, ... }:
        with lib;
        let
          cfg = config.programs.hellvim;
          
          # IMPORTANT: Create our own pkgs from nixpkgs-unstable
          # This ignores whatever pkgs the host system uses
          unstablePkgs = import nixpkgs {
            system = pkgs.system;
            config.allowUnfree = true;
          };
          
          # Build nvim with unstable packages
          nvim = nixvim.legacyPackages.${pkgs.system}.makeNixvimWithModule {
            pkgs = unstablePkgs;  # Use unstable pkgs here
            module = import ./config;
            extraSpecialArgs = {
              inherit inputs self;
            } // import ./lib { pkgs = unstablePkgs; };  # Pass unstable pkgs to lib
          };
        in
        {
          options.programs.hellvim = {
            enable = mkEnableOption "HellVim - NixVim configuration";
          };
          
          config = mkIf cfg.enable {
            home.packages = [ nvim ];
          };
        };
    in
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        nixvimLib = nixvim.lib.${system};
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };
        nixvim' = nixvim.legacyPackages.${system};
        nixvimModule = {
          inherit pkgs;
          module = import ./config;
          extraSpecialArgs = {
            inherit inputs self;
          } // import ./lib { inherit pkgs; };
        };
        nvim = nixvim'.makeNixvimWithModule nixvimModule;
      in
      {
        checks = {
          default = nixvimLib.check.mkTestDerivationFromNixvimModule nixvimModule;
        };
        
        packages.default = nvim;
      }
    ) // {
      homeManagerModules.default = homeManagerModule;
    };
}

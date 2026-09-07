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

  outputs =
    {
      nixvim,
      flake-utils,
      nixpkgs,
      self,
      ...
    }@inputs:
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
          }
          // import ./lib { inherit pkgs; };
        };
        nvim = nixvim'.makeNixvimWithModule nixvimModule;

        # Create myvim wrapper script
        myvim = pkgs.writeShellScriptBin "myvim" ''
          exec ${nvim}/bin/nvim "$@"
        '';

        # Create the homeManagerModule INSIDE eachDefaultSystem
        homeManagerModule =
          {
            config,
            lib,
            ...
          }:
          with lib;
          let
            cfg = config.programs.hellvim;
          in
          {
            options.programs.hellvim = {
              enable = mkEnableOption "HellVim - NixVim configuration";
            };

            config = mkIf cfg.enable {
              home.packages = [ nvim myvim ];
            };
          };
      in
      {
        checks = {
          default = nixvimLib.check.mkTestDerivationFromNixvimModule nixvimModule;
        };

        packages = {
          default = nvim;
          nvim = nvim;
          myvim = myvim;
        };

        apps = {
          default = {
            type = "app";
            program = "${nvim}/bin/nvim";
          };
          myvim = {
            type = "app";
            program = "${myvim}/bin/myvim";
          };
        };

        homeManagerModules.default = homeManagerModule;
      }
    );
}
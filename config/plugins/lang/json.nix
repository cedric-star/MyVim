{ pkgs, lib, ... }:
{
  plugins = {
    conform-nvim.settings = {
      formatters_by_ft = {
        json = [ "jq" ];
      };

      formatters = {
        jq = {
          command = lib.getExe pkgs.jq;
        };
      };
    };

    lint = {
      lintersByFt = {
        json = [ "biomejs" ];
      };
      linters = {
        biomejs = {
          cmd = lib.getExe pkgs.biome;
        };
      };
    };

    lsp.servers.jsonls = {
      enable = true;
    };
  };
}

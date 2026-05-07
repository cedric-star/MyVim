{ pkgs, lib, ... }:
{
  plugins = {
    conform-nvim.settings = {
      formatters_by_ft.java = [ "google-java-format" ];
    };

    lsp.servers = {
      jdtls = {
        enable = true;
        filetypes = [
          "java"
        ];
      };
    };

  };
}

{ pkgs, ... }:
{
  extraPlugins = [ pkgs.vimPlugins.base16-nvim ];
  extraConfigLua = ''
    require('base16-colorscheme').setup({
      base00 = '#1a0a14',
      base01 = '#27121e',
      base02 = '#3d2434',
      base03 = '#b13d8c',
      base04 = '#c95ca0',
      base05 = '#e8d2b8',
      base06 = '#e0a5c9',
      base07 = '#e8c3d9',
      base08 = '#f0d1e4',
      base09 = '#c085c7',
      base0A = '#8a6dc7',
      base0B = '#6b84d1',
      base0C = '#e8e45c',
      base0D = '#d67db3',
      base0E = '#d1d1d1',
      base0F = '#b4d4af',
    })
  '';
}
{ pkgs, ... }:

{
  opts.termguicolors = false;
  extraPlugins = [ pkgs.vimPlugins.base16-nvim ];
  extraConfigLua = ''
    require('base16-colorscheme').setup('default-dark')
  '';
}

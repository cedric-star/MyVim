{ pkgs, lib, ... }:
{
  opts.termguicolors = lib.mkForce false; # Terminal-Farben statt GUI-Hex
  
  # Kein colorscheme-Plugin nötig – Nvim nutzt einfach die Terminal-Palette
  extraConfigLua = ''
    vim.cmd("colorscheme default")
  '';
}
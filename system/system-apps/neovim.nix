# Neovim Configuration
{ pkgs, nixvim, ... }:

{
  programs.nixvim = {
    enable = true;
    plugins = {
      lightline.enable = true;
      treesitter.enable = true;
    };
    options = {
      number = true;
      shiftwidth = 2;
    };
  };
}

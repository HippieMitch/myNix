# Neovim Configuration
{ pkgs, nixvim, ... }:

{
  programs.nixvim = {
    enable = true;
    plugins = {
      barbecue.enable = true;
      lightline.enable = true;
      neo-tree.enable = true;
      nix.enable = true;
      noice.enable = true;
      rustaceanvim.enable = true;
      treesitter.enable = true;
    };
    colorschemes = {
      kanagawa.enable = true;
    };
    options = {
      number = true;
      shiftwidth = 2;
    };
  };
}

# Neovim Configuration
{ pkgs, nixvim, ... }:

{
  programs.nixvim = {
    enable = true;
    plugins = {
      barbecue.enable = true;
      dap.enable = true;
      lightline.enable = true;
      neo-tree.enable = true;
      nix.enable = true;
      noice.enable = true;
      rustaceanvim.enable = true;
      telescope.enable = true;
      treesitter.enable = true;
    };
    extraPlugins = with pkgs.vimPlugins; [
      nvim-dap-python
      telescope-fzf-native-nvim
      vim-nix
    ];
    colorschemes = {
      kanagawa.enable = true;
    };
    options = {
      number = true;
      shiftwidth = 2;
    };
  };
}

# Neovim Configuration
{ pkgs, nixvim, ... }:

{
  environment.systemPackages = [ pkgs.wl-clipboard ];

  programs.nixvim = {
    enable = true;
    plugins = {
      barbecue.enable = true;
      dap.enable = true;
      lightline.enable = true;
      neo-tree.enable = true;
      nix.enable = true;
      rustaceanvim.enable = true;
      surround.enable = true;
      telescope.enable = true;
      treesitter.enable = true;
      which-key.enable = true;
    };
    extraPlugins = with pkgs.vimPlugins; [
      nvim-dap-python
      telescope-fzf-native-nvim
      vim-nix
    ];
    colorschemes = {
      cyberdream.enable = true;
    };
    opts = {
      number = true;
      relativenumber = true;
      showmatch = true;
      ignorecase = true;
      hlsearch = true;
      incsearch = true;
      expandtab = true;
      shiftwidth = 2;
      wildmode = "longest,list";
      clipboard = "unnamedplus";
    };
  };
}

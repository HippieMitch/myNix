# Neovim Configuration
{ pkgs, lib, ... }:

{
  environment.systemPackages = [ pkgs.wl-clipboard ];

  programs.nixvim = {
    enable = true;
    plugins = {
      barbecue.enable = true;
      dap.enable = true;
      lualine.enable = true;
      neo-tree.enable = true;
      nix.enable = true;
      rustaceanvim.enable = true;
      vim-surround.enable = true;
      telescope.enable = true;
      treesitter.enable = true;
      which-key.enable = true;
      web-devicons.enable = true;
      lsp = {
        enable = true;
        servers = {
          ts_ls.enable = true;
          pyright.enable = true;
          nixd = {
            enable = true;
            settings = {
              formatting.command = [ (lib.getExe pkgs.alejandra) ];
            };
          };
        };
      };
      none-ls = {
        enable = true;
        sources = {
          code_actions = {
            statix.enable = true;
          };
          formatting = {
            alejandra.enable = true;
            nixfmt.enable = true;

            prettier = {
              enable = true;
              settings = ''
              {
                extra_args = { "--no-semi", "--single-quote" },
              }
            '';
            disableTsServerFormatter = true;
            };
          };
        };
      };
    };

    extraPlugins = with pkgs.vimPlugins; [
      nvim-dap-python
      telescope-fzf-native-nvim
      vim-be-good
      vim-nix
    ];
    colorschemes = {
      base16 = {
        enable = true;
        colorscheme = "tokyodark";
      };
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
      foldenable = false;
      smartindent = true;
     # guicursor = "a:ver100";
    };
  };
}

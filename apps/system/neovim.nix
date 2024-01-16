# Neovim Configuration
{ ... }:

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    configure = {
      customRC = ''
        set number
        set shiftwidth=4
        set tabstop=4
        set softtabstop=4
        set expandtab
        syntax on
        set mouse=v
        set mouse=a
        set showmatch
        set ignorecase
        set hlsearch
        set incsearch
        set autoindent
        set clipboard=unnamedplus
        filetype plugin on
      '';
    };
  };
}

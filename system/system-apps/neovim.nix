# Neovim Configuration
{ pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
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
        set autoindent smartindent
        set wildmode=longest,list
        set ttyfast
        filetype plugin on
        noremap y "*y
        noremap yy "*yy
        noremap Y "*y$
        noremap x "*x
        noremap dd "*dd
        noremap D "*D
      '';
    };
  };
  environment.systemPackages = with pkgs; [ wl-clipboard ];
}

# Set ZSH Shell as Default

{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
    histSize = 10000;
  };
  users.users.sean.shell = pkgs.zsh;
  environment.shells = with pkgs; [ zsh ];
}

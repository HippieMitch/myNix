# VSCodium Configuration
{ pkgs, ... }:

{

  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    extensions = with pkgs.vscode-extensions; [
      github.github-vscode-theme
      vadimcn.vscode-lldb
      golang.go
    ];
  };
}

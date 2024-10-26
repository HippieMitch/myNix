# Zed-Editor Configuration
{ pkgs, ... }:

{

  programs.zed-editor = {
    enable = true;
    package = pkgs.zed-editor_git;
    extensions = [ "nix" "rust-analyzer" ];
    userSettings = {
      features = {
        copilot = false;
      };
      lsp = {
        rust-analyzer = {
          binary = {
            path = "/etc/profiles/per-user/sean/bin/rust-analyzer";
          };
        };
      };
      telemetry = {
        metrics = false;
      };
      theme = {
        mode = "dark";
        light = "Ayu Light";
        dark = "Ayu Dark";
      };
      vim_mode = true;
      ui_font_size = 17;
      buffer_font_size = 17;
    };
  };
  home.packages = with pkgs; [
    nixd
    rust-analyzer
  ];
}

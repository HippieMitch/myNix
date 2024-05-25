# fastfetch config

{ config, ... }:

{
  programs.fastfetch = {
    enable = true;
    settings = {
    schema =  "https://github.com/fastfetch-cli/fastfetch/raw/dev/doc/json_schema.json";
    logo = "/etc/nixos/home/home-packages/fastfetch/logos/nix.txt";
    display =  {
        size = {
            maxPrefix = "MB";
            ndigits = 1;
        };
    };
    modules =  [
        "title"
        "separator"
        "os"
        "host"
        "kernel"
        "uptime"
        "packages"
        "shell"
        {
            type = "display";
            compactType =  "original";
            key = "Resolution";
        }
        "de"
        "wm"
        "wmtheme"
        "theme"
        "icons"
        "terminal"
        {
            type = "terminalfont";
            format = "{/3}{-}{/}{2}{?3} {3}{?}";
        }
        "cpu"
        {
            type = "gpu";
            key = "GPU";
        }
        {
            type = "memory";
            format = "{/2}{-}{/}{/2}{-}{/}{} / {}";
        }
        "break"
        "colors"
      ];
    };
  };
}

# fastfetch config

{ config, ... }:

{
  programs.fastfetch = {
    enable = true;
    settings = {
    schema =  "https://github.com/fastfetch-cli/fastfetch/raw/dev/doc/json_schema.json";
    logo = "/etc/nixos/home/home-packages/fastfetch/logos/linux.ascii";
    display =  {
        size = {
            maxPrefix = "MB";
            ndigits = 1;
        };
    };
    modules =  [
       # "title"
       # "separator"
        "break"
        "os"
       # "host"
        "kernel"
       # "uptime"
        "packages"
        "terminal"
       # {
       #     type = "display";
       #     compactType =  "original";
       #     key = "Resolution";
       # }
        "shell"
       # "wm"
       # "wmtheme"
       # "theme"
       # "icons"
        "de"
       # {
       #     type = "terminalfont";
       #     format = "{/3}{-}{/}{2}{?3} {3}{?}";
       # }
        "cpu"
        {
            type = "gpu";
            key = "GPU";
        }
        {
            type = "memory";
            format = "{/2}{-}{/}{/2}{-}{/}{} / {}";
        }
       # "separator"
        "break"
        "colors"
        "break"
      ];
    };
  };
}

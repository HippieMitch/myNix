# fastfetch config

{ ... }:

{
  programs.fastfetch = {
    enable = true;
    settings = {
    schema =  "https://github.com/fastfetch-cli/fastfetch/raw/dev/doc/json_schema.json";
    logo = {
    #  source = "/etc/nixos/home/home-packages/fastfetch/logos/aperture.ascii";
      type = "small";
      color = {
        "1" = "blue";
        "2" = "white";
        };
    #  type = "file";
      padding = {
        top = 2;
        left = 4;
      };
    };
    display =  {
        separator = "    ";
    };
    modules =  [
        {
            type = "custom";
            format = "┌────────────────────────────────────────────────────────────┐";
        }
        "break"
        {
            type = "os";
            key = "  ";
            keyColor = "blue";
        }
        {
            type = "kernel";
            key = "  ";
            keyColor = "white";
        }
        {
            type = "packages";
            key = "  󰮯";
            keyColor = "yellow";
        }
        {
            type = "wm";
            key = "  󰨇";
            keyColor = "blue";
        }
        {
            type = "terminal";
            key = "  ";
            keyColor = "magenta";
        }
        {
            type = "shell";
            key = "  ";
            keyColor = "yellow";
        }
        "break"
        {
            type = "custom";
            format = "└────────────────────────────────────────────────────────────┘";
        }
        "break"
      ];
    };
  };
}

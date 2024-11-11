# fastfetch config

{ ... }:

{
  programs.fastfetch = {
    enable = true;
    settings = {
    schema =  "https://github.com/fastfetch-cli/fastfetch/raw/dev/doc/json_schema.json";
    logo = {
    #  source = "/etc/nixos/home/home-packages/fastfetch/logos/aperture.ascii";
      color = {
        "1" = "blue";
        "2" = "white";
        };
    #  type = "file";
      padding = {
        top = 0;
        left = 0;
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
        {
            type = "custom";
            format = " {#90}  {#31}  {#32}  {#33}  {#34}  {#35}  {#36}  {#37}  {#38}  {#39}       {#38}  {#37}  {#36}  {#35}  {#34}  {#33}  {#32}  {#31}  {#90}";
        }
        "break"
        {
            type = "custom";
            format = "┌────────────────────────────────────────────────────────────┐";
        }
        "break"
        {
            type = "host";
            key = "  ";
            keyColor = "bright_blue";
        }
        {
            type = "cpu";
            key = "  ";
            keyColor = "bright_green";
        }
        {
            type = "gpu";
            key = "  󱤓";
            keyColor = "red";
        }
        {
            type = "memory";
            key = "  󰍛";
            keyColor = "bright_yellow";
        }
        {
            type = "disk";
            key = "  ";
            keyColor = "bright_cyan";
        }
        "break"
        {
            type = "custom";
            format = "└────────────────────────────────────────────────────────────┘";
        }
      ];
    };
  };
}

{ config, ... }:

{
  programs.mpv = {
    enable = true;
    config = {
      hwdec = "auto";
      profile = "gpu-hq";
      vo = "gpu";
      gpu-context = "wayland";
      volume = 115;
      sid = "no";
    };
    bindings = {
      "+" = "add volume 2";
      "-" = "add volume -2";
    };
  };
}

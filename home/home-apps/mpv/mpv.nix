{ config, ... }:

{
  programs.mpv = {
    enable = true;
    config = {
      hwdec = "auto";
      profile = "gpu-hq";
      force-window = "immediate";
      vo = "gpu";
      gpu-context = "wayland";
      volume = 115;
    };
    bindings = {
      "+" = "add volume 2";
      "-" = "add volume -2";
    };
  };
}

{ ... }:

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
      sub-font = "Noto Sans Regular";
      sub-font-size = 44;
      sub-border-size = 1;
      sub-color = "#CDCDCD";
      sub-shadow-color = "#000000";
      sub-shadow-offset = 2;
    };
    bindings = {
      "+" = "add volume 2";
      "-" = "add volume -2";
    };
  };
}

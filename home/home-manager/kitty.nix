# Kitty Configuration
{ config, ... }:

{
  programs.kitty = {
    enable = true;
    settings = {
      background_opacity = "0.85";
      confirm_os_window_close = 0;
      font_family = "NFM Medium";
      font_size = 14;
      initial_window_height = "42c";
      initial_window_width = "106c";
      kitty_mod = "ctrl+shift";
      linux_display_server = "x11";
      remember_window_size = "no";
      term = "xterm-256color";
    };
     theme = "Farin";
  };
}

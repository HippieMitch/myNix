# Kitty Configuration
{ config, ... }:

{
  programs.kitty = {
    enable = true;
    settings = {
      background_opacity = "0.80";
      confirm_os_window_close = 0;
      font_family = "JetBrainsMono NFM Medium";
     # font_family = "UbuntuMono Nerd Font";
     # font_family = "SauceCodePro NFM Medium";
      font_size = 14;
      initial_window_height = "40c";
      initial_window_width = "107c";
      kitty_mod = "ctrl+shift";
      linux_display_server = "x11";
      remember_window_size = "no";
      term = "xterm-256color";
    };
    theme = "Modus Vivendi";
#    theme = "Mishran";
#    theme = "VSCode_Dark";
#    theme = "Modus Vivendi Tinted";
#    theme = "Paul Millr";
  };
}

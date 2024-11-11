# Kitty Configuration
{ ... }:

{
  programs.kitty = {
    enable = true;
    shellIntegration.enableZshIntegration = true;
    settings = {
      background_opacity = "0.85";
      confirm_os_window_close = 0;
      font_family = "CommitMono Nerd Font Mono";
     # font_family = "FiraMono Nerd Font Mono Medium";
     # font_family = "JetBrainsMono NFM";
     # font_family = "UbuntuMono Nerd Font";
     # font_family = "SauceCodePro NFM Medium";
      font_size = 14;
      initial_window_height = "46c";
      initial_window_width = "112c";
      kitty_mod = "ctrl+shift";
      linux_display_server = "x11";
      remember_window_size = "no";
      term = "xterm-256color";
    };
#    themeFile = "Catppuccin-Mocha";
#    themeFile = "Modus_Vivendi";
#    themeFile = "Mishran";
    themeFile = "GitHub_Dark_High_Contrast";
#    themeFile = "VSCode_Dark";
#    themeFile = "Modus_Vivendi_Tinted";
#    themeFile = "Paul_Millr";
  };
}

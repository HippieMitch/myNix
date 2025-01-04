{ pkgs, ... }:

{
programs.alacritty = {
  enable = true;
  settings = {
    general = {
      import = [ pkgs.alacritty-theme.github_dark_high_contrast ];
      live_config_reload = true;
    };

    terminal = {
      shell.program = "fish";
    };

    env = {
      TERM = "xterm-256color";
    };

    window = {
      dynamic_title = false;
      dynamic_padding = true;
      dimensions = {
        columns = 108;
        lines = 46;
      };
      opacity = 0.85;
      padding = {
        x = 5;
        y = 1;
      };
    };

    cursor = {
      style = {
        shape = "Beam";
        blinking = "On";
      };
    };

    scrolling = {
      history = 10000;
      multiplier = 3;
    };

    font = {
      size = 14;
      normal = {
        family = "CommitMono Nerd Font Mono";
        style = "Regular";
      };
      bold = {
        family = "CommitMono Nerd Font Mono";
        style = "Bold";
      };
      italic = {
        family = "CommitMono Nerd Font Mono";
        style = "Italic";
      };
      bold_italic = {
        family = "CommitMono Nerd Font Mono";
        style = "Italic";
      };
    };

    selection = {
      semantic_escape_chars = '',│`|:"' ()[]{}<>'';
      save_to_clipboard = true;
    };
    };
  };
}

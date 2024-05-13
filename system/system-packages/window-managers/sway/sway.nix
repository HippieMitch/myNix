  # SwayFX

{ pkgs, ...}:

{
  programs.sway = {
    enable = true;
    package = pkgs.swayfx;
  };
}

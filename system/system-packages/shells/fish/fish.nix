# Set Fish Shell as Default

{ pkgs, ... }:

{
  programs.fish.enable = true;
  users.users.sean.shell = pkgs.fish;
  environment.shells = with pkgs; [ fish ];
}

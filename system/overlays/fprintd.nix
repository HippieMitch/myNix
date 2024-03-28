# Bypass PAM Testing
{ config, pkgs, lib, ... }:

{
nixpkgs.overlays = [
  (final: prev: {
    fprintd = prev.fprintd.overrideAttrs (_: {
      mesonCheckFlags = [
        "--no-suite" "fprintd:TestPamFprintd"
      ];
    });
  })
  ];
}

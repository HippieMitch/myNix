# Bypass PAM Testing
{ ... }:

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

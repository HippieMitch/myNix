# TLP Fix
{ config, pkgs, lib, ... }:

{
nixpkgs.overlays = [
  (final: prev: {
    tlp = prev.tlp.overrideAttrs (old: {
  postPatch = ''
    substituteInPlace Makefile --replace-fail ' ?= /usr/' ' ?= /'
  '';
  makeFlags = [
    "TLP_NO_INIT=1"
    "TLP_WITH_ELOGIND=0"
    "TLP_WITH_SYSTEMD=1"

    "DESTDIR=${placeholder "out"}"
  ];
});
  })
  ];
}

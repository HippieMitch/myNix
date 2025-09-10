{ pkgs, ... }:

{
  home.packages = with pkgs; [
    (vivaldi.overrideAttrs
      (oldAttrs: {
        dontWrapQtApps = false;
        dontPatchELF = true;
        nativeBuildInputs = oldAttrs.nativeBuildInputs ++ [pkgs.kdePackages.wrapQtAppsHook];
        proprietaryCodecs = true;
        enableWidevine = false;
    }))
  ];
}

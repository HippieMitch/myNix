# Enable AppArmor

{ ... }:

{
  security.apparmor = {
    enable = true;
    killUnconfinedConfinables = true;
  };
}

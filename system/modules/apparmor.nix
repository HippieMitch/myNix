# Enable AppArmor

{ config, ... }:

{
  security.apparmor = {
    enable = true;
    killUnconfinedConfinables = true;
  };
}

# Enable AppArmor

{ ... }:

{
  security.apparmor = {
    enable = true;
    killUnconfinedConfinables = true;
  };

  environment.memoryAllocator.provider = "graphene-hardened-light";
}

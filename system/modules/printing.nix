# Printing

{ ... }:

{
  services = {

    printing = {
      enable = true;
    };

    avahi = {
      enable = true;
      nssmdns4 = true;
      openFirewall = true;
    };
  };

  hardware = {
    sane = {
      brscan5 = {
        enable = true;
      };
    };

  };
}

# Chrony

{ config, ... }:

{
  services.chrony = {
    enable = true;
    enableNTS = true;
    servers = [
      "time.cloudflare.com"
      "ntppool1.time.nl"
      "nts.netnod.se"
      "ptbtime1.ptb.de"
      "time.dfm.dk"
      "time.cifelli.xyz"
     ];
  };
}


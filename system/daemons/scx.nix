# Sched_ext - scx

{ pkgs, ... }:

{
  services.scx = {
    enable = true;
    package = pkgs.master.scx.rustscheds;

    scheduler = "scx_bpfland";

  #  scheduler = "scx_flash";

  /*
    scheduler = "scx_lavd";
    extraArgs = [ 
      "--autopilot" 
    ];
*/

  #  scheduler = "scx_cosmos";
  };
}

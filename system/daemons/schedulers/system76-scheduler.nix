  # System76 Scheduler

{ pkgs, ... }:

{
  services.system76-scheduler.enable = true;
  services.system76-scheduler.useStockConfig = true;
}

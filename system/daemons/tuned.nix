{ ... }:

{
# Enable TuneD
  services.tuned = {
    enable = true;
    ppdSettings = {
      profiles =
        {
          balanced = "desktop";
          performance = "latency-performance";
          power-saver = "balanced-battery";
        };
    };
  };
}

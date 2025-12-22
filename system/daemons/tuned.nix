{ ... }:

{
# Enable TuneD
  services.tuned = {
    enable = true;
    ppdSettings = {
      profiles =
        {
          balanced = "balanced";
          performance = "latency-performance";
          power-saver = "powersave";
        };
    };
    settings = {
      dynamic_tuning = true;
    };
  };
}

{ ... }:

{
# Enable TuneD
  services.tuned = {
    enable = true;
    ppdSettings = {
      main = {
        default = "performance";
      };
      settings = {
      dynamic_tuning = true;
      };
    };
  };
}

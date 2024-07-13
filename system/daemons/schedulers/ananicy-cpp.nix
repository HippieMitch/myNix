  # Ananicy CPP

{ pkgs, inputs, ...}:

{
  services.ananicy =  {
   enable = true;
   package = pkgs.master.ananicy-cpp;
   rulesProvider = pkgs.ananicy-rules-cachyos;
  };
}

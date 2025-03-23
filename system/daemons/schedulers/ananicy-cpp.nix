  # Ananicy CPP

{ pkgs, ...}:

{
  services.ananicy =  {
   enable = true;
   package = pkgs.master.ananicy-cpp;
   rulesProvider = pkgs.ananicy-rules-cachyos;
  };
}

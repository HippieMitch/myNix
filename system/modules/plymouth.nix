# Enable Plymouth

{ pkgs, ... }:

{
  boot = {
    # Kernel Parameters
    kernelParams = [
      "quiet"
      "splash"
      "initremap=on"
      "boot.shell_on_fail"
      "rd.systemd.show_status=auto"
      "udev.log_priority=3"
    ];
    consoleLogLevel = 3;
    initrd = {
      verbose = false;
      systemd.enable = true;
    };

    # Enable Plymouth
    plymouth = { 
      enable = true;
      font = "${pkgs.maple-mono.Normal-NF}/share/fonts/truetype/MapleMonoNormal-NF-Regular.ttf";
      logo = "${pkgs.nixos-icons}/share/icons/hicolor/128x128/apps/nix-snowflake-white.png";
    };
  };
}

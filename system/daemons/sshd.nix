{ ... }:

{
  services.openssh = {
    enable = true;
    settings.passwordAuthentication = false;
    allowSFTP = false; # Don't set this if you need sftp
    settings.kbdInteractiveAuthentication = false;
    extraConfig = ''
      AllowTcpForwarding yes
      X11Forwarding no
      AllowAgentForwarding no
      AllowStreamLocalForwarding no
      AuthenticationMethods publickey
    '';
  };
}


# Use Stubby and NextDNS

{ lib, ... }:

{
services.stubby = {
  enable = true;
  settings = {
    listen_addresses = [ "127.0.0.1" "0::1" ];
    resolution_type = "GETDNS_RESOLUTION_STUB";
    dns_transport_list = [ "GETDNS_TRANSPORT_TLS" ];
    tls_authentication = "GETDNS_AUTHENTICATION_REQUIRED";
    tls_query_padding_blocksize = 128;
    idle_timeout = 10000;
    round_robin_upstreams = 1;
    tls_min_version = "GETDNS_TLS1_3";
    upstream_recursive_servers = [
      {
        address_data = "45.90.28.0";
        tls_auth_name = "424879.dns.nextdns.io";
      }
      {
        address_data = "2a07:a8c0::0";
        tls_auth_name = "424879.dns.nextdns.io";
      }
      {
        address_data = "45.90.30.0";
        tls_auth_name = "424879.dns.nextdns.io";
      }
      {
        address_data = "2a07:a8c1::0";
        tls_auth_name = "424879.dns.nextdns.io";
      }
    ];
  };
  };

networking = {
  nameservers = [ "127.0.0.1" "::1"];
  networkmanager.dns = lib.mkDefault"none";
};
services.resolved = {
  enable = false;
  fallbackDns = [ "45.90.28.0" "2a07:a8c0::0" "45.90.30.0" "2a07:a8c1::0" ];
  };
}

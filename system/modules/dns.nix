# Use Stubby and Cloudflare DNS

{ config, ... }:

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
    dnssec = "GETDNS_EXTENSION_TRUE";
    upstream_recursive_servers = [
      {
        address_data = "1.1.1.2";
        tls_auth_name = "cloudflare-dns.com";
      }
      {
        address_data = "1.0.0.2";
        tls_auth_name = "cloudflare-dns.com";
      }
      {
        address_data = "2606:4700:4700::1112";
        tls_auth_name = "cloudflare-dns.com";
      }
      {
        address_data = "2606:4700:4700::1002";
        tls_auth_name = "cloudflare-dns.com";
      }
    ];
  };
};
networking.nameservers = [ "::1" "127.0.0.1" ];
services.resolved = {
  enable = true;
  fallbackDns = [ "2606:4700:4700::1112" "2606:4700:4700::1002" "1.1.1.2" "1.0.0.2" ];
  };
}

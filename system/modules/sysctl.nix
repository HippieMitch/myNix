# sysctl.d

{ ... }:

{
  boot.kernel.sysctl = {
    "vm.swappiness" = 100;
    "vm.vfs_cache_pressure" = 50;
    "vm.dirty_bytes" = 268435456;
    "vm.dirty_ratio" = 5;
    "vm.dirty_background_bytes" = 134217728;
    "vm.dirty_background_ratio" = 5;
    "vm.dirty_expire_centisecs" = 3000;
    "vm.dirty_writeback_centisecs" = 1500;
    "vm.page-cluster" = 0;
    "vm.max_map_count" = 2147483642;
    "vm.mmap_rnd_bits" = "32";
    "vm.mmap_rnd_compat_bits" = "16";
    "kernel.printk" = "3 3 3 3";    
    "kernel.dmesg_restrict" = 1;
    "kernel.kptr_restrict" = 2;
    "kernel.kexec_load_disabled" = 1;
    "kernel.sched_rt_runtime_us" = 980000;
    "kernel.exec-shield" = "2";
    "kernel.randomize_va_space" = "2";
    "kernel.pid_max" = "65536";
    "kernel.core_uses_pid" = "1";
    "kernel.yama.ptrace_scope" = "2";
    "net.core.netdev_max_backlog" = 16384;
    "net.core.somaxconn" = 8192;
    "net.core.rmem_default" = 1048576;
    "net.core.rmem_max" = 16777216;
    "net.core.wmem_default" = 1048576;
    "net.core.wmem_max" = 16777216;
    "net.core.optmem_max" = 65536;
    "net.core.default_qdisc" = "cake";
    "net.ipv4.tcp_congestion_control" = "bbr";
    "net.ipv4.tcp_rmem" = "4096 1048576 3276800";
    "net.ipv4.tcp_wmem" = "4096 65536 16777216";
    "net.ipv4.udp_rmem_min" = 8192;
    "net.ipv4.udp_wmem_min" = 8192;
    "net.ipv4.tcp_fastopen" = 3;
    "net.ipv4.tcp_syncookies" = 1;
    "net.ipv4.tcp_rfc1337" = 1;
    "net.ipv4.tcp_ecn" = 1;
    "net.ipv4.tcp_timestamps" = 0;
    "net.ipv4.tcp_slow_start_after_idle" = 0;
    "net.ipv4.conf.default.rp_filter" = 1;
    "net.ipv4.conf.all.rp_filter" = 1;
    "net.ipv4.conf.all.accept_redirects" = 0;
    "net.ipv4.conf.default.accept_redirects" = 0;
    "net.ipv4.conf.all.secure_redirects" = 0;
    "net.ipv4.conf.default.secure_redirects" = 0;
    "net.ipv6.conf.all.accept_redirects" = 0;
    "net.ipv6.conf.default.accept_redirects" = 0;
    "net.ipv4.conf.all.send_redirects" = 0;
    "net.ipv4.conf.default.send_redirects" = 0;
    "net.ipv4.icmp_ignore_bogus_error_responses" = "1";
    "net.ipv4.tcp_window_scaling" = "1";
    "net.ipv4.ip_forward" = "0";
    "net.ipv4.tcp_synack_retries" = "5";
    "net.ipv4.conf.all.log_martians" = "1";
    "net.ipv4.conf.default.accept_source_route" = "0";
    "net.ipv4.icmp_echo_ignore_broadcasts" = "1";
    "net.ipv6.conf.all.disable_ipv6" = "1";
    "net.ipv6.conf.default.disable_ipv6" = "1";
    "net.ipv6.conf.all.accept_ra" = "0";
    "net.ipv6.conf.default.accept_ra" = "0";
    "net.ipv4.tcp_sack" = "0";
    "net.ipv4.tcp_dsack" = "0";
    "net.ipv4.tcp_fack" = "0";
    "fs.inotify.max_user_watches" = 524288;
    "fs.file-max" = 2097152;
    "fs.protected_hardlinks" = "1";
    "fs.protected_symlinks" = "1";
  };
}

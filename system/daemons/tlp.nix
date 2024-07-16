{ ... }:

{
# Enable TLP
  services.tlp = {
    enable = true;
    settings = {
      CPU_DRIVER_OPMODE_ON_AC = "passive";
      CPU_DRIVER_OPMODE_ON_BAT = "passive";
      CPU_SCALING_GOVERNOR_ON_AC = "ondemand";
      CPU_SCALING_GOVERNOR_ON_BAT = "ondemand";
      CPU_ENERGY_PERF_POLICY_ON_AC = "performance";
      CPU_ENERGY_PERF_POLICY_ON_BAT = "balance_power";
      PLATFORM_PROFILE_ON_AC = "performance";
      PLATFORM_PROFILE_ON_BAT = "low-power";
      PCIE_ASPM_ON_AC = "default";
      PCIE_ASPM_ON_BAT = "powersupersave";
      CPU_BOOST_ON_AC = 1;
      CPU_BOOST_ON_BAT = 1;
      CPU_HWP_DYN_BOOST_ON_AC = 1;
      CPU_HWP_DYN_BOOST_ON_BAT = 0;
      TLP_PERSISTENT_DEFAULT = 0;
      CPU_MIN_PERF_ON_AC = 0;
      CPU_MAX_PERF_ON_AC = 100;
      CPU_MIN_PERF_ON_BAT = 0;
      CPU_MAX_PERF_ON_BAT = 65;
      RUNTIME_PM_ON_AC = "on";
      RUNTIME_PM_ON_BAT = "auto";
      SCHED_POWERSAVE_ON_AC = 0;
      SCHED_POWERSAVE_ON_BAT = 1;
      NMI_WATCHDOG = 0;
      USB_AUTOSUSPEND = 1;
      USB_EXCLUDE_AUDIO = 1;
      USB_EXCLUDE_BTUSB = 0;
      USB_EXCLUDE_PHONE = 0;
      USB_EXCLUDE_PRINTER = 1;
      USB_EXCLUDE_WWAN = 0;
      WIFI_PWR_ON_AC = 0;
      WIFI_PWR_ON_BAT = 0;
      WOL_DISABLE = 1;
      USB_ALLOWLIST = "32ac:0002";
  };
 };
}

# Fish Configuration
{ config, ... }:

{
  programs.fish = {
    enable = true;
    shellAliases = 
      {
errors = "journalctl -p err..alert";
cpu = ''watch -n.1 "grep \"^[c]pu MHz\" /proc/cpuinfo"'';
anime = "ani-cli";
alaconf = "nano ~/.config/alacritty/alacritty.yml";
kittyconf = "nano ~/.config/kitty/kitty.conf";
inhibitors = "systemd-inhibit --list --mode = block";
fishconf = "nano /home/sean/.config/fish/config.fish";
#cpu = ''watch -n.1 'grep \'^[c]pu MHz\' /proc/cpuinfo'''';
neo = "macchina";
npkgs = "nix-store --query --requisites /run/current-system | cut -d- -f2- | sort | uniq";
#Run these from ~./html
server = "ssh -i 'stonerayphoto.pem' ec2-user@ec2-3-86-84-19.compute-1.amazonaws.com";
copy2server = "rsync -zaP -e 'ssh -i /mnt/secondary/Documents/Code/html/stonerayphoto.pem' /mnt/secondary/Documents/Code/html/index.html  ec2-user@3.86.84.19:/home/ec2-user";
sconf = "sudo nano /etc/nixos/system/system.nix";
fconf = "sudo nano /etc/nixos/flake.nix";
hconf = "sudo nano /etc/nixos/home/home.nix";
hwconf = "sudo nano /etc/nixos/system/hardware-configuration.nix";
simps = "sudo nano /etc/nixos/system/system-imports.nix";
himps = "sudo nano /etc/nixos/home/home-imports.nix";
spkg = "sudo nano /etc/nixos/apps/system-apps.nix";
hpkg = "sudo nano /etc/nixos/apps/home-apps.nix";
ncheck = ''cd /etc/nixos && sudo nix flake lock --update-input nixpkgs && sudo nix flake lock --update-input nixpkgs-stable && sudo nix flake lock --update-input home-manager && sudo nixos-rebuild dry-run'';
ndryrun = ''cd /etc/nixos && sudo nix flake lock --update-input nixpkgs-unstable-small && sudo nix flake lock --update-input nixpkgs-unstable && sudo nix flake lock --update-input nixpkgs-master && sudo nix flake lock --update-input chaotic && sudo nix flake lock --update-input home-manager && sudo nix build "#nixosConfigurations.$(hostname).config.system.build.toplevel" && nvd diff /run/current-system ./result'';
flakeup = "cd /etc/nixos && sudo nix flake update";
nup = "cd /etc/nixos && sudo nix flake update && sudo nixos-rebuild switch";
kup = "cd /etc/nixos && sudo nix flake update && sudo nixos-rebuild boot";
nswitch = "sudo nixos-rebuild switch --flake /etc/nixos/#luke";
nboot = "sudo nixos-rebuild boot --flake /etc/nixos/#luke";
nrun = "nix-shell -p";
ngens = "sudo nix-env -p /nix/var/nix/profiles/system --list-generations";
nclean = "sudo nix-collect-garbage -d && nix-collect-garbage -d";
rustsh = "nix shell github:oxalica/rust-overlay";
ds = "distrobox-stop -Y arch";
cgcache = "rm -rf ~/.config/vivaldi/Default/GPUCache && rm -rf ~/.config/vivaldi/Default/Storage/ext/mpognobbkildjkofajifpdfhcoklimli/def/GPUCache && rm -rf ~/.config/VSCodium/GPUCache";
ls = "lsd";
ndev = "nix develop";
nsea = "nix-search";
dup = "dconf dump / | dconf2nix > dconf.nix && sudo cp /home/sean/dconf.nix /etc/nixos/apps/desktops/gnome/dconf.nix && rm /home/sean/dconf.nix";
kconf = "nano ~/.config/kitty/kitty.conf";
pkgver = "nvd list | grep";
#streamhop = "sudo nix flake update --override-input nixpkgs github:NixOS/nixpkgs";
    };
  };
}

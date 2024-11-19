# Fish Configuration
{ ... }:

{
  programs.fish = {
    enable = true;
    shellAliases = 
      {
	errors = "journalctl -p err..alert";
	cpu = ''watch -n.1 "grep \"^[c]pu MHz\" /proc/cpuinfo"'';
	anime = "ani-cli";
	alaconf = "nvim ~/.config/alacritty/alacritty.yml";
	kittyconf = "nvim ~/.config/kitty/kitty.conf";
        de = "doas nvim";
	inhibitors = "systemd-inhibit --list --mode = block";
	fishconf = "nvim /home/sean/.config/fish/config.fish";
	neo = "fastfetch";
	npkgs = "nix-store --query --requisites /run/current-system | cut -d- -f2- | sort | uniq";
	server = "ssh -i 'stonerayphoto.pem' ec2-user@ec2-3-86-84-19.compute-1.amazonaws.com";
	copy2server = "rsync -zaP -e 'ssh -i /mnt/secondary/Documents/Code/html/stonerayphoto.pem' /mnt/secondary/Documents/Code/html/index.html  ec2-user@3.86.84.19:/home/ec2-user";
	sconf = "doas nvim /etc/nixos/system/system.nix";
	fconf = "doas nvim /etc/nixos/flake.nix";
	hconf = "doas nvim /etc/nixos/home/home.nix";
	hwconf = "doas nvim /etc/nixos/system/hardware.nix";
	simps = "doas nvim /etc/nixos/system/system-imports.nix";
	himps = "doas nvim /etc/nixos/home/home-imports.nix";
	spkg = "doas nvim /etc/nixos/system/system-packages.nix";
	hpkg = "doas nvim /etc/nixos/home/home-packages.nix";
        # ncheck = "cd /etc/nixos && doas nixos-rebuild dry-run";
        ndry = "doas nh os test -R --ask /etc/nixos";
        # ndry = ''cd /etc/nixos && doas nix build ".#nixosConfigurations.$(hostname).config.system.build.toplevel" && nvd diff /run/current-system ./result'';
	fupd = "cd /etc/nixos && doas nix flake update";
        nswitch = "doas nh os switch -R --ask /etc/nixos";
        # nswitch = "doas nixos-rebuild switch --flake /etc/nixos/#spaceghost";
        nboot = "doas nh os boot -R --ask /etc/nixos";
        # nboot = "doas nixos-rebuild boot --flake /etc/nixos/#spaceghost";
	nrun = "nix-shell -p";
	ngens = "doas nix-env -p /nix/var/nix/profiles/system --list-generations";
	nclean = "doas nix-collect-garbage -d && nix-collect-garbage -d";
	rustsh = "nix shell github:oxalica/rust-overlay";
	ds = "distrobox-stop -Y fedora";
	cgcache = "rm -r ~/.config/BraveSoftware/Brave-Browser/Default/GPUCache && rm -rf ~/.config/vivaldi/Default/GPUCache && rm -rf ~/.config/vivaldi/Default/Storage/ext/mpognobbkildjkofajifpdfhcoklimli/def/GPUCache && rm -rf ~/.config/VSCodium/GPUCache";
	ls = "lsd";
	ndev = "nix develop";
	nsea = "nix-search";
	dup = "dconf dump / | dconf2nix > dconf.nix && doas cp /home/sean/dconf.nix /etc/nixos/system/system-packages/desktops/gnome/dconf/dconf.nix && rm /home/sean/dconf.nix";
	kconf = "nvim ~/.config/kitty/kitty.conf";
	pkgver = "nvd list | grep";
	streamhop = "doas nix flake update --override-input nixpkgs github:NixOS/nixpkgs";
    };
    interactiveShellInit = ''
      set -U "fish_greeting";
      set -Ux "LIBVA_DRIVER_NAME" "iHD";
    '';
  };
  programs = {
    starship = {
      enable = true;
      enableFishIntegration = true;
      settings = ( import ../prompts/starship/presets/pure.nix).starshipSettings;
     };
    zoxide = {
      enable = true;
      enableFishIntegration = true;
    };
  };
}

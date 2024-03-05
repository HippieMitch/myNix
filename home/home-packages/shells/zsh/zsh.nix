# ZSH

{config, pkgs, ... }:

{
programs.zsh = {
  enable = true;
  shellAliases = 
      {
	errors = "journalctl -p err..alert";
	cpu = ''watch -n.1 "grep \"^[c]pu MHz\" /proc/cpuinfo"'';
	anime = "ani-cli";
	alaconf = "nvim ~/.config/alacritty/alacritty.yml";
	kittyconf = "nvim ~/.config/kitty/kitty.conf";
	inhibitors = "systemd-inhibit --list --mode = block";
	fishconf = "nvim /home/sean/.config/fish/config.fish";
	neo = "macchina";
	npkgs = "nix-store --query --requisites /run/current-system | cut -d- -f2- | sort | uniq";
	server = "ssh -i 'stonerayphoto.pem' ec2-user@ec2-3-86-84-19.compute-1.amazonaws.com";
	copy2server = "rsync -zaP -e 'ssh -i /mnt/secondary/Documents/Code/html/stonerayphoto.pem' /mnt/secondary/Documents/Code/html/index.html  ec2-user@3.86.84.19:/home/ec2-user";
	sconf = "sudo nvim /etc/nixos/system/system.nix";
	fconf = "sudo nvim /etc/nixos/flake.nix";
	hconf = "sudo nvim /etc/nixos/home/home.nix";
	hwconf = "sudo nvim /etc/nixos/system/hardware.nix";
	simps = "sudo nvim /etc/nixos/system/system-imports.nix";
	himps = "sudo nvim /etc/nixos/home/home-imports.nix";
	spkg = "sudo nvim /etc/nixos/system/system-packages.nix";
        hpkg = "sudo nvim /etc/nixos/home/home-packages.nix";
      #	ncheck = "cd /etc/nixos && sudo nixos-rebuild dry-run";
        ndryrun = "nh os test --ask /etc/nixos";
      # ndryrun = ''cd /etc/nixos && sudo nix build ".#nixosConfigurations.$(hostname).config.system.build.toplevel" && nvd diff /run/current-system ./result'';
	flakeup = "cd /etc/nixos && sudo nix flake update";
        nswitch = "nh os switch --ask /etc/nixos";
       # nswitch = "sudo nixos-rebuild switch --flake /etc/nixos/#spaceghost";
        nboot = "nh os boot --ask /etc/nixos";
       # nboot = "sudo nixos-rebuild boot --flake /etc/nixos/#spaceghost";
	nrun = "nix-shell -p";
	ngens = "sudo nix-env -p /nix/var/nix/profiles/system --list-generations";
	nclean = "sudo nix-collect-garbage -d && nix-collect-garbage -d";
	rustsh = "nix shell github:oxalica/rust-overlay";
	ds = "distrobox-stop -Y arch";
	cgcache = "rm -r ~/.config/BraveSoftware/Brave-Browser/Default/GPUCache && rm -rf ~/.config/vivaldi/Default/GPUCache && rm -rf ~/.config/vivaldi/Default/Storage/ext/mpognobbkildjkofajifpdfhcoklimli/def/GPUCache && rm -rf ~/.config/VSCodium/GPUCache";
	ls = "lsd";
	ndev = "nix develop";
	nsea = "nix-search";
	dup = "dconf dump / | dconf2nix > dconf.nix && sudo cp /home/sean/dconf.nix /etc/nixos/system/desktops/gnome/dconf/dconf.nix && rm /home/sean/dconf.nix";
	kconf = "nvim ~/.config/kitty/kitty.conf";
	pkgver = "nvd list | grep";
	streamhop = "sudo nix flake update --override-input nixpkgs github:NixOS/nixpkgs";
    };
    
  completionInit = "autoload -U compinit && compinit -i";

  plugins = [
      {
        name = "powerlevel10k";
        src = pkgs.zsh-powerlevel10k;
        file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
      }
      {
        name = "powerlevel10k-config";
        src = ./p10k-config;
        file = "p10k.zsh";
      }
    ];
  };
}

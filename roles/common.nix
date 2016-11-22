{ config, pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
		bzip2 file rsync wget zip unzip p7zip htop vim man tmux
		lsof
	];

	services = {
		ntp.enable = true;
	};
}

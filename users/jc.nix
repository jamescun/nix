{ config, pkgs, ... }:

{
	programs.zsh.enable = true;

	users.extraUsers.jc = {
		isNormalUser = true;
		description = "James Cunningham";
		home = "/home/jc";
		extraGroups = [ "wheel" "networkmanager" "systemd-journal" ];
		shell = "/run/current-system/sw/bin/zsh";
	};
}

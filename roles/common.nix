{ config, pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
		bzip2 file rsync wget zip unzip p7zip htop vim man tmux
		lsof
	];

	services = {
		ntp.enable = true;

		openssh = {
			enable = true;

			forwardX11 = false;
			permitRootLogin = "no";
			passwordAuthentication = false;
		};
	};

	programs = {
		ssh = {
			startAgent = true;
		};
	};
}

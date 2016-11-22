{ config, pkgs, ... }:

{
	imports = [
		./hw/lenovo-x220.nix

		./roles/common.nix
		./roles/desktop.nix
		./roles/development.nix
		./roles/sdr.nix

		./users/jc.nix
	];

	boot.loader.grub.device = "/dev/sda";

	fileSystems."/" = {
		device = "/dev/disk/by-uuid/872a29f0-1e29-41fc-bb98-869ed3995821";
		fsType = "ext4";
	};

	swapDevices = [
		{ device = "/dev/disk/by-uuid/27daff61-0367-4856-8d3c-d45e7c2b232d"; }
	];

	networking = {
		hostName = "jctp";

		networkmanager.enable = true;
		nameservers = [ "8.8.4.4" "8.8.8.8" ];

		firewall = {
			enable = true;

			allowPing = true;
			allowedTCPPorts = [ 51413 ];
			allowedUDPPorts = [ 51413 ];
		};
	};

	time.timeZone = "Europe/London";

	services = {
		redshift = {
			# Angel, London
			latitude = "51.54";
			longitude = "-0.10";
		};
	};

	system.stateVersion = "16.09";
}

{ config, pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
		gnuradio gnuradio-osmosdr gqrx audacity rtl-sdr inspectrum
	];

	# enable udev rules for 2832/2838 RLT-SDR
	services.udev.extraRules = ''
		SUBSYSTEMS=="usb", ATTRS{idVendor}=="0bda", ATTRS{idProduct}=="2832", MODE:="0666"
		SUBSYSTEMS=="usb", ATTRS{idVendor}=="0bda", ATTRS{idProduct}=="2838", MODE:="0666"
	'';

	# dont load DVB-T modules automatically
	boot.blacklistedKernelModules = [ "dvb_usb_rtl28xxu" ];
}

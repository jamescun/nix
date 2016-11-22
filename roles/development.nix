{ config, pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
		# runtimes
		python python3 ruby nodejs

		# compilers
		go gcc

		# source revisioning
		gitMinimal mercurial

		# utilities
		openssl gnupg
	];
}

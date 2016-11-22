{ config, pkgs, ... }:

{
	nixpkgs.config = {
		allowUnfree = true;
	};

	environment.systemPackages = with pkgs; [
		# themes
		arc-gtk-theme arc-icon-theme gtk_engines gtk-engine-murrine
		gnome_themes_standard hicolor_icon_theme

		# window manager
		dmenu i3status i3lock-fancy

		# display utilities
		xorg.xbacklight

		# applications
		google-chrome slack spotify vlc dropbox-cli transmission_gtk
		inkscape rxvt_unicode
	];

	services = {
		xserver = {
			enable = true;

			windowManager.i3.enable = true;

			displayManager.sessionCommands = ''
				# path to themes for GTK
				export GTK_DATA_PREFIX=${config.system.path}
			'';

			synaptics = {
				enable = true;
				twoFingerScroll = false;
				maxSpeed = "0.8";

				# inversed (natural) scrolling
				additionalOptions = ''
					Option "VertScrollDelta" "-111"
					Option "HorizScrollDelta" "-111"
				'';
			};

		};
		
		redshift = {
			enable = true;

			temperature = {
				day = 5500;
				night = 3700;
			};
		};

		syncthing = {
			enable = true;
			user = "jc";
			group = "users";
		};
	};

	fonts = {
		enableFontDir = true;
		enableCoreFonts = true;
		enableDefaultFonts = true;
		enableGhostscriptFonts = true;

		fonts = with pkgs; [
			powerline-fonts
			ubuntu_font_family
			emojione
			noto-fonts
			noto-fonts-emoji
		];
	};
}

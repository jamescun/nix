{ config, pkgs, ... }:

{
	programs.zsh.enable = true;

	users.extraUsers.jc = {
		isNormalUser = true;
		description = "James Cunningham";
		home = "/home/jc";
		extraGroups = [ "wheel" "networkmanager" "systemd-journal" ];
		shell = "/run/current-system/sw/bin/zsh";

		openssh.authorizedKeys.keys = [
			"ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDVTLHo/UJQsyhBAy+f04HOrjKkDyFPEhMtkbYYDQSDDbgNWRG488Wyc8Kc6G7GHJw19KYzmKUy9KvGWZVFA096p2TP/FnrqzOM68UJz+TNjWFYNorJuFVseGwdyDcsrNQUT07/tUK9sEEN8xDIwTpHnPpZddBkAqxzi8SUvvk6W5qkgkO8vGrcrfL3b2Ij/SR9iKla8/dUeU9/Vh+wL2HJdaXSgq7HUEcz/+BDVE47aqMyyWTeX83+Q8iytYqCU6FaL2uRMP4urEpqdk6mOIcrEL0EDk4ZCZpZrFKVUOfxgaiijIdoEzr1KJkaedqKMDMcPiKSl9PeE9i+pQQ4klEMM/3XM1EOH+4u4WlcYP6t4M8xl40RGsScPb3TERnz4SRtzkItgY+N6jMgXNC6AFdrqJwmcZEWPUPk9VumphHiKaFxjlbbXD509f/mesTb3vnrm1KuiwRZBKHXeUpedADhTx9O/aKhIHu1Qops7/03Y7wRCSSHSM5ubzB07TzEOsIDOVjCgdvsyJmVjRqRbMxM9q0cQEnyyhXSnStgmzk94Q0od2LmDhXUfXWuNA7Rt0O3+H2uFaPI8tuRRRtZnUdKeBTHBBeV7m60LhyX3u7wECaL+7L77WICbIWNf3yiuukdSU1v6GQEEC9o2cWlLMFWTMKx9v7vMNHErlvAp1XZdw== me@jamescun.com"
			"ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCtFTK+Axxy2krQdjJaBBoOFc2zRAs/z5dE+/czP+1t1bpeCpbdAo8bQZpsBpUZREbITzS/7LjfaKocZgeGlbd9FBsiW2JjXYxuR7XGazQTgk29NsC94oLHXgxV0wPyi4DceMee5HlMbOm6cHRwLPvxkx2Bw9DmmNkQoWaohElCNBR0VOTgc4gFyGD+gna0Y1uMcEGGVQX41nDbY/7fXKOt6obH1VQPHXgnRsB9Ev2cQ9ZT1yskpHSu7nhxY3BaTsUW5j89BeBr2BXI5ZDCE42ELDSJ4nG/ELiJtc9KXPApVO1lw85QcNtnxQS/4FerP+6h4rsmu6mZjBS0s5bafABb2yxkWzJC3PC6LKFu6IDthFn+Iq5nluDaVJkQOIoGmXV/Kkw+KGy96iXyh6UpfyoqymDEr4RJSZ5sKGeVW2ZyL4VD5+ax/EUYQmLl/zknHTMtkr0IBzV8nH8JJ/gf4Bt4f2YpgqFngt1EOxEiXcss+qpEI4xTkiRdUkeHt/zafbFcjNtPidZUkW6Ym+P15qELHBWfk25PrgOh2wg10i7FgTRJraAUcmrDVjfarNc1AEL+H9gfAFB02FAWznQGTpN2D4tGitmZMROELW2wTSAYobkI+pcYF44tSaXfVkXsTuCEMbV4VI8ezFIBnBpd1p1dw1phwa6QlF4rxPumOlkUww== jctp@jamescun.com"
		];
	};
}

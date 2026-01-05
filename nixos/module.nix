{ config, pkgs, ... }:

let
	dotfiles = ./dotfiles;

	user = "tim";
	home = config.users.users.${user}.home;

in

{
	programs.hyprland.enable = true;

	system.activationScripts.Dotfiles.text = ''
		mkdir -p ${home}/.config
		rsync -a --ignore-existing ${dotfiles}/ ${home}/.config/
	'';
}

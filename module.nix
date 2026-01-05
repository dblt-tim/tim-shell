{ config, pkgs, ... }:

let
	dotfiles = ./dotfiles;

	user = "tim";
	home = config.users.users.${user}.home;

in

{
	programs.hyprland.enable = true;
	
	system.environmentPackages = with pkgs; [
		kitty
	];

	system.activationScripts.dotfiles.text = ''
		mkdir -p ${home}/.config
		${pkgs.rsync}/bin/rsync -a --ignore-existing ${dotfiles}/* ${home}/.config/
		chown -R ${user}:users ${home}/.config
	'';
}

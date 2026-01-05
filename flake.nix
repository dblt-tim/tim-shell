{
	description = "Tim's dotfiles";

	inputs = {
		nixpkgs.url = "nixpkgs/nixos-25.11";
	};

	outputs = { self, nixpkgs }:
	{
		nixosModules.dotfiles = import ./module.nix;
	};
}

{
	description = "Tim's dotfiles";

	inputs = {
		nixpkgs.url = "github:";
	};

	outputs = { self, nixpkgs }:
	{
		nixosModules.dotfiles = import ./nixos/module.nix;
	};
}

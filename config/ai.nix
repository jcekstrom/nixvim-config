{ lib, pkgs, ... }:
{
  extraPackages = with pkgs; [
		opencode
  ];

  # Show whitespace for stupid languages that are sensitive to whitespace.
  autoCmd = [
  ];

	extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      pname = "lazyjj.nvim";
      version = "unstable-2025-06-18";

      src = pkgs.fetchFromGitHub {
        owner = "pete3n";
        repo = "";
      };

      dependencies = [
        pkgs.vimPlugins.nvim-lspconfig
        pkgs.vimPlugins.nvim-treesitter
      ];

      #nvimRequireCheck = [ "ninjection" ];

      meta = {
        description = "Edit injected languages with Treesitter and LSP support";
        homepage = "https://github.com/pete3n/ninjection.nvim";
        license = pkgs.lib.licenses.mit;
      };
    })


	];
  plugins = {
  };

  keymaps = [
  ];

  extraConfigLuaPost = # lua
    ''
    '';
}

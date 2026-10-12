# Imports for all configuration files, top-level Neovim options and globals
{ ... }:
{
  imports = [
    ./modules/languages.nix
    #./ai.nix
    ./completing.nix
    ./debugging.nix
    ./editing.nix
    ./folding.nix
    ./formatting.nix
    ./keymapping.nix
    ./linting.nix
    ./navigating.nix
    ./parsing.nix
    ./searching.nix
    ./interpreting.nix
    ./styling.nix
  ];

  language_support = {
    lua.enable = true;
    nix.enable = true;
    python = {
      enable = true;
      versions = [ "3.14" ];
    };

  };

  globals = {
    mapleader = " ";
  };

  opts = {
    backup = false; # Undotree
    foldlevelstart = 99;
    hlsearch = false;
    incsearch = true;
    listchars = {
      tab = "» ";
      trail = "·";
      nbsp = "␣";
      lead = "·";
    };
    number = true;
    colorcolumn = "120";
    relativenumber = false;
    shiftwidth = 2;
    swapfile = false; # Undotree
    tabstop = 4;
    termguicolors = true;
    undofile = true;
    updatetime = 50;
    wrap = false;
  };

  # Disable formatting on-save by default.
  extraConfigLua = # lua
    ''
        vim.api.nvim_create_autocmd("VimEnter", {
          callback = function()
            vim.cmd("FormatDisable")
          end,
        })
    '';
}

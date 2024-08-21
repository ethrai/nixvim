{
  # Import all your configuration modules here
  imports = [
    # core
    ./keymaps.nix
    ./opts.nix
    ./autocmds.nix
    # catppuccin
    ./plugins/theme.nix
    # completion
    ./plugins/cmp.nix
    ./plugins/autopairs.nix
    ./plugins/supermaven.nix

    ./plugins/lsp.nix
    ./plugins/lspsaga.nix
    ./plugins/luasnip.nix
    ./plugins/lspkind.nix
    # formatting/linting
    ./plugins/none-ls.nix
    # syntax
    ./plugins/treesitter.nix
    ./plugins/colorizer.nix
    ./plugins/indent-blankline.nix
    ./plugins/misc.nix
    ./plugins/illuminate.nix

    # git
    ./plugins/gitsigns.nix
    ./plugins/lazygit.nix

    # navigation
    ./plugins/telescope.nix
    ./plugins/oil.nix
    ./plugins/neotree.nix
    ./plugins/harpoon.nix

    # 💅
    ./plugins/lualine.nix

  ];

}

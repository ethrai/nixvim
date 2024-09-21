{
  # Import all your configuration modules here
  imports = [
    # core
    ./keymaps.nix
    ./opts.nix
    ./autocmds.nix

    ./plugins/langs/go.nix
    ./plugins/langs/nix.nix

    ./plugins/themes/tokyonight.nix

    ./plugins/cmp/cmp.nix
    ./plugins/cmp/luasnip.nix

    ./plugins/lsp/lsp.nix
    ./plugins/lsp/lspkind.nix
    ./plugins/lsp/none-ls.nix
    ./plugins/lsp/lspsaga.nix

    ./plugins/syntax/treesitter.nix
    ./plugins/syntax/surround.nix
    ./plugins/syntax/leap.nix
    ./plugins/syntax/autopairs.nix
    ./plugins/syntax/colorizer.nix
    ./plugins/syntax/illuminate.nix
    ./plugins/syntax/indent-blankline.nix

    ./plugins/git/gitsigns.nix
    ./plugins/git/lazygit.nix

    ./plugins/navigation/telescope.nix
    ./plugins/navigation/neotree.nix
    ./plugins/navigation/oil.nix
    ./plugins/navigation/harpoon.nix

    ./plugins/auto-session.nix

    ./plugins/ui/noice.nix
    ./plugins/ui/notify.nix
    ./plugins/ui/lualine.nix
    ./plugins/ui/web-devicons.nix

  ];

}

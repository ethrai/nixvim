{
  # Import all your configuration modules here
  imports = [
    # code
    ./plugins/nix.nix
    ./plugins/go.nix
    ./plugins/java.nix

    # core
    ./keymaps.nix
    ./opts.nix
    ./autocmds.nix
    ./plugins/theme.nix

    # completion
    ./plugins/cmp.nix

    ./plugins/lsp.nix
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
    ./plugins/harpoon.nix
    ./plugins/telescope.nix
    ./plugins/oil.nix

    ./plugins/auto-session.nix

    ./plugins/obsidian.nix

    # 💅
    ./plugins/lualine.nix
    # ./plugins/noice.nix
    # ./plugins/notify.nix

    # mini
    ./plugins/mini.nix

  ];

}

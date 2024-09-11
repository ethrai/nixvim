{
  # Import all your configuration modules here
  imports = [
    # devel
    ./plugins/nix.nix
    ./plugins/image.nix
    # core
    ./keymaps.nix
    ./opts.nix
    ./autocmds.nix
    # ./plugins/tokyonight.nix
    ./plugins/catppuccin.nix
    # completion
    ./plugins/cmp.nix
    ./plugins/autopairs.nix
    ./plugins/supermaven.nix

    ./plugins/lsp.nix
    ./plugins/luasnip.nix
    ./plugins/lspkind.nix
    # formatting/linting
    ./plugins/none-ls.nix
    ./plugins/align.nix
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
    # ./plugins/oil.nix

    ./plugins/auto-session.nix
    # ./plugins/obsession.nix

    ./plugins/obsidian.nix

    # 💅
    ./plugins/lualine.nix
    ./plugins/noice.nix
    ./plugins/notify.nix
    ./plugins/headlines.nix

  ];

}

{
  # Import all your configuration modules here
  imports = [
    # code
    ./plugins/nix.nix
    ./plugins/go.nix

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
    ./plugins/misc.nix
    ./plugins/illuminate.nix

    # git
    ./plugins/gitsigns.nix
    ./plugins/lazygit.nix

    # navigation
    ./plugins/harpoon.nix
    ./plugins/telescope.nix
    ./plugins/neotree.nix

    ./plugins/auto-session.nix

    # 💅
    ./plugins/lualine.nix
    ./plugins/web-devicons.nix

    # mini
    ./plugins/mini.nix

  ];

}

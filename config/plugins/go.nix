{ pkgs, ... }: {
  plugins.lsp = {
    servers = {
      gopls = {
        enable = true;
        filetypes = [ "go" "gomod" "gowork" "gotmpl" ];
        settings = { usePlaceholders = true; };
      };

    };
  };

  # extraPlugins = [{ plugin = pkgs.vimPlugins.go-nvim; }];
  # extraConfigLua = ''
  #   require("go").setup({
  #     goimports = "goimports", -- if set to 'gopls' will use gopls format, also goimports
  #     fillstruct = "fillstruct",
  #     lsp_keymaps = true, -- true: apply default lsp keymaps
  #     lsp_codelens = true,
  #     diagnostic = {  -- set diagnostic to false to disable vim.diagnostic setup
  #                     -- in go.nvim
  #       underline = true,
  #     },
  #     lsp_inlay_hints = {
  #       enable = false,
  #     },
  #     gopls_remote_auto = true,
  #     gocoverage_sign = "█",
  #     sign_priority = 7,
  #     dap_debug = true,
  #     dap_debug_gui = true,
  #     dap_debug_keymap = true, -- true: use keymap for debugger defined in go/dap.lua
  #                              -- false: do not use keymap in go/dap.lua.  you must define your own.
  #                              -- windows: use visual studio style of keymap
  #     dap_vt = true, -- false, true and 'all frames'
  #     textobjects = true,
  #     test_runner = "go", -- one of {`go`, `richgo`, `dlv`, `ginkgo`}
  #     luasnip = true, -- set true to enable included luasnip
  #   })
  # '';
}

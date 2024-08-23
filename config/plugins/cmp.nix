{
  opts.completeopt = [ "noselect" ];
  plugins = {
    cmp = {
      enable = true;

      settings = {
        snippet = { expand = "luasnip"; };
        completion.completeopt = "noselect";
        # completion.autocomplete = true;
        preselect = "cmp.PreselectMode.None";
        autoEnableSources = true;
        experimental = { ghost_text = true; };
        performance = {
          debounce = 60;
          fetchingTimeout = 200;
          maxViewEntries = 30;
        };
        formatting = { fields = [ "kind" "abbr" "menu" ]; };
        sources = [
          {
            name = "path"; # file system paths
            keywordLength = 3;
          }
          { name = "nvim_lsp"; }
          { name = "nvim_lsp_signature_help"; }
          { name = "tmux"; }
          {
            name = "luasnip"; # snippets
            keywordLength = 3;
          }
          { name = "git"; }
          {
            name = "buffer"; # text within current buffer
            option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
            keywordLength = 3;
          }
        ];

        window = {
          completion = { border = "solid"; };
          documentation = { border = "solid"; };
        };

        mapping = {
          "<C-Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
          "<C-j>" = "cmp.mapping.select_next_item()";
          "<C-k>" = "cmp.mapping.select_prev_item()";
          "<C-n>" = "cmp.mapping.select_next_item()";
          "<C-p>" = "cmp.mapping.select_prev_item()";
          "<C-e>" = "cmp.mapping.abort()";
          "<C-d>" = "cmp.mapping.scroll_docs(-4)";
          "<C-u>" = "cmp.mapping.scroll_docs(4)";
          "<C-Space>" = "cmp.mapping.complete()";
          "<CR>" = "cmp.mapping.confirm({ select = false })";
          "<S-CR>" =
            "cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true })";

          "<Tab>" = ''
            cmp.mapping(function(fallback)
                  if require("luasnip").locally_jumpable(1) then
                    require("luasnip").jump(1)
                  else
                    fallback()
                  end
                end, { "i", "s" })
          '';
          "<S-Tab>" = ''
            cmp.mapping(function(fallback)
                 if require("luasnip").jumpable(-1) then
                    require("luasnip").jump(-1)
                  else
                    fallback()
                  end
                end, { "i", "s" })
          '';
        };
      };
    };

    cmp-nvim-lsp.enable = true; # lsp
    cmp-buffer.enable = true;
    cmp-path.enable = true; # file system paths
    cmp_luasnip.enable = true; # snippets

    cmp-nvim-lsp-signature-help.enable = true;
    cmp-nvim-lua.enable = true;
  };
  extraConfigLua = ''
        luasnip = require("luasnip")
        kind_icons = {
          Text = "󰊄",
          Method = " ",
          Function = "󰡱 ",
          Constructor = " ",
          Field = " ",
          Variable = "󱀍 ",
          Class = " ",
          Interface = " ",
          Module = "󰕳 ",
          Property = " ",
          Unit = " ",
          Value = " ",
          Enum = " ",
          Keyword = " ",
          Snippet = " ",
          Color = " ",
          File = "",
          Reference = " ",
          Folder = " ",
          EnumMember = " ",
          Constant = " ",
          Struct = " ",
          Event = " ",
          Operator = " ",
          TypeParameter = " ",
        }

     local cmp = require'cmp'

     -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
     cmp.setup.cmdline({'/', "?" }, {
       sources = {
         { name = 'buffer' }
       }
     })

    -- Set configuration for specific filetype.
     cmp.setup.filetype('gitcommit', {
       sources = cmp.config.sources({
         { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
       }, {
         { name = 'buffer' },
       })
     })

     -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
     cmp.setup.cmdline(':', {
       sources = cmp.config.sources({
         { name = 'path' }
       }, {
         { name = 'cmdline' }
       }),
     })  '';
}

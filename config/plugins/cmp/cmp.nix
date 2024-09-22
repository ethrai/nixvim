{
  plugins = {
    cmp-nvim-lsp.enable = true; # lsp
    cmp-nvim-lua.enable = true;
    cmp-buffer.enable = true;
    cmp-async-path.enable = true;
    cmp-cmdline.enable = true;
    cmp_luasnip.enable = true; # snippets

    cmp = {
      enable = true;
      settings = {
        snippet = { expand = "luasnip"; };
        autoEnableSources = true;
        experimental = { ghost_text = false; };
        performance = {
          debounce = 60;
          fetchingTimeout = 200;
          maxViewEntries = 30;
        };
        formatting = { fields = [ "kind" "abbr" ]; };
        sources = [
          { name = "async_path"; }
          {
            name = "nvim_lsp";
            keyword_lenght = 3;
          }
          { name = "luasnip"; }
          { name = "git"; }
          { name = "buffer"; }
        ];

        window = {
          completion = {
            border = "rounded";
            winhighlight = "Normal:CmpDocumentation,CmpItemAbbr:CmpItemMenu";
            scrollbar = false;
          };

          documentation = {
            border = "rounded";
            winhighlight = "Normal:CmpDocumentation,CmpItemAbbr:CmpItemMenu";
            scrollbar = false;
          };
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

          "<C-l>" = ''
            cmp.mapping(function(fallback)
                  if require("luasnip").locally_jumpable(1) then
                    require("luasnip").jump(1)
                  else
                    fallback()
                  end
                end, { "i", "s" })
          '';
          "<C-h>" = ''
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

    luasnip = { enable = true; };
  };
  extraConfigLua = "";
}

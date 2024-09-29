{
  plugins = {
    cmp = {
      enable = true;
      settings = {
        autoEnableSources = true;
        snippet = { expand = "luasnip"; };
        formatting = { fields = [ "kind" "abbr" ]; };
        sources = [
          { name = "async_path"; }
          { name = "nvim_lsp"; }
          { name = "luasnip"; }
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

          "<C-Space>" = "cmp.mapping.complete()";

          "<CR>" = "cmp.mapping.confirm({ select = false })";

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
}

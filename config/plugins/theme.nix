{
  colorschemes = {
    catppuccin = {
      enable = true;
      settings = {
        background = {
          light = "latte";
          dark = "mocha";
        };
        custom_highlights = ''
          function(colors)
            return {
              CmpBorder = { fg = colors.blue },
            }
          end
        '';
        flavour = "mocha";
        term_colors = true;
        no_bold = false;
        no_italic = false;
        no_underline = false;
        integrations = {
          leap = true;
          noice = true;
          notify = true;
          lsp_saga = true;
          cmp = true;
          gitsigns = true;
          neotree = true;
          illuminate = {
            enabled = true;
            lsp = true;
          };
          treesitter = true;
          telescope.enabled = true;
          nvim_surround = true;
          harpoon = true;
          indent_blankline = {
            enabled = true;
            scope_color =
              "blue"; # catppuccin color (eg. `lavender`) Default: text
            colored_indent_levels = true;
          };
          native_lsp = {
            enabled = true;
            inlay_hints = { background = false; };
            underlines = {
              errors = [ "underline" ];
              hints = [ "underline" ];
              information = [ "underline" ];
              warnings = [ "underline" ];
            };
          };
        };
      };
    };
  };
}

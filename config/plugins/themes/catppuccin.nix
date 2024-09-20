{
  colorschemes = {
    catppuccin = {
      enable = true;
      settings = {
        flavour = "frappe";
        transparent_background = false;
        term_colors = false;
        no_italic = false;
        no_bold = false;
        no_underline = false;
        integrations = {
          leap = true;
          cmp = true;
          gitsigns = true;
          neotree = true;
          illuminate = {
            enabled = true;
            lsp = true;
          };
          treesitter = true;
          telescope.enabled = true;
          harpoon = true;
          mini.enabled = true;
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

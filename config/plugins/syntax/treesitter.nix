{ pkgs, ... }: {
  plugins = {
    treesitter = {
      enable = true;
      folding = true;
      settings = {
        highlight = {
          enable = true;
          disable = ''
            function(lang, bufnr)
              return vim.api.nvim_buf_line_count(bufnr) > 10000
            end
          '';
        };
        indent = {
          enable = true;
          disable = [ "go" ];
        };
        incremental_selection = { enable = true; };
      };
      nixvimInjections = true;
      grammarPackages = pkgs.vimPlugins.nvim-treesitter.allGrammars;
    };

    treesitter-textobjects = {
      enable = true;
      select = {
        enable = true;
        lookahead = true;
        keymaps = {
          "aa" = "@parameter.outer";
          "ia" = "@parameter.inner";
          "ii" = "@conditional.inner";
          "ai" = "@conditional.outer";
          "af" = "@function.outer";
          "if" = "@function.inner";
          "ac" = "@class.outer";
          "ic" = "@class.inner";
          "il" = "@loop.inner";
          "al" = "@loop.outer";
          "at" = "@comment.outer";
          "ib" = "@block.inner";
          "ab" = "@block.outer";
        };
      };
    };
  };

}

{ pkgs, ... }: {
  plugins = {
    treesitter = {
      enable = true;
      settings = {
        indent.enable = false;
        highlight.enable = true;
        incremental_selection = { enable = true; };
      };
      folding = true;
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
      move = {
        enable = true;
        gotoNextStart = {
          "]m" = "@function.outer";
          "]]" = "@class.outer";
        };
        gotoNextEnd = {
          "]M" = "@function.outer";
          "][" = "@class.outer";
        };
        gotoPreviousStart = {
          "[m" = "@function.outer";
          "[[" = "@class.outer";
        };
        gotoPreviousEnd = {
          "[M" = "@function.outer";
          "[]" = "@class.outer";
        };
      };
      swap = { enable = false; };
    };
  };

}

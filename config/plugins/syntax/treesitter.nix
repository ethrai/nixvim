{ pkgs, ... }: {
  extraPlugins = with pkgs.vimPlugins; [ nvim-treesitter-textsubjects ];
  plugins = {
    treesitter = {
      enable = true;
      settings = {
        indent.enable = false;
        highlight.enable = true;
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
      swap = {
        enable = false;
        swapNext = { "<leader>p" = "@parameters.inner"; };
        swapPrevious = { "<leader>P" = "@parameter.outer"; };
      };
    };
  };

}

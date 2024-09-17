{ pkgs, ... }: {
  extraPlugins = with pkgs.vimPlugins; [ nvim-treesitter-textsubjects ];
  plugins = {
    treesitter-context = {
      enable = true;
      settings = {
        # ???
        enable = true;
        # Whether to show line numbers.
        line_numbers = true; # true
        max_lines = 1; # 0 default
        mode = "cursor";
      };
    };

    treesitter = {
      enable = true;
      settings = {
        indent.enable = true;
        highlight.enable = true;
      };
      folding = false;
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
        enable = true;
        swapNext = { "<leader>p" = "@parameters.inner"; };
        swapPrevious = { "<leader>P" = "@parameter.outer"; };
      };
    };
  };

}

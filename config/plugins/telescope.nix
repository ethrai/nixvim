{
  plugins.telescope = {
    enable = true;
    extensions = {
      file-browser = { enable = true; };
      fzf-native = { enable = true; };
    };
    settings = {
      defaults = {
        layout_config = {
          horizontal = {
            prompt_position = "top";
            width = 0.98;
          };
          preview_width = 0.55;
        };
        sorting_strategy = "ascending";
      };
    };
    keymaps = {
      "<leader><space>" = {
        action = "find_files";
        options = { desc = "Find project files"; };
      };
      "<leader>/" = {
        action = "live_grep";
        options = { desc = "Grep (root dir)"; };
      };
      "<leader>fs" = {
        action = "lsp_document_symbols";
        options = { desc = "Grep (root dir)"; };
      };
      "<leader>fa" = {
        action = "lsp_dynamic_workspace_symbols";
        options = { desc = "Grep (root dir)"; };
      };
      "<leader>:" = {
        action = "command_history";
        options = { desc = "Command History"; };
      };
      "<leader>b" = {
        action = "buffers";
        options = { desc = "+buffer"; };
      };
      "<leader>ff" = {
        action = "find_files";
        options = { desc = "Find project files"; };
      };
      "<leader>f<CR>" = {
        action = "resume";
        options = { desc = "Resume"; };
      };
      "<leader>e" = {
        action = "oldfiles";
        options = { desc = "Recent"; };
      };
      "<leader>fg" = {
        action = "git_files";
        options = { desc = "Search git files"; };
      };
      "<leader>gc" = {
        action = "git_commits";
        options = { desc = "Commits"; };
      };
      "<leader>gs" = {
        action = "git_status";
        options = { desc = "Status"; };
      };
      "<leader>sa" = {
        action = "autocommands";
        options = { desc = "Auto Commands"; };
      };
      "<leader>sb" = {
        action = "current_buffer_fuzzy_find";
        options = { desc = "Buffer"; };
      };
      "<leader>fd" = {
        action = "diagnostics";
        options = { desc = "Workspace diagnostics"; };
      };
      "<leader>sh" = {
        action = "highlights";
        options = { desc = "Search Highlight Groups"; };
      };
      "<leader>sm" = {
        action = "marks";
        options = { desc = "Jump to Mark"; };
      };
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>sd";
      action = "<cmd>Telescope diagnostics bufnr=0<cr>";
      options = { desc = "Document diagnostics"; };
    }
    {
      key = "<leader>fe";
      mode = "n";
      action = "<cmd>Telescope file_browser<cr>";
      options = { desc = "File browser"; };
    }
    {
      mode = "n";
      key = "<leader>fE";
      action = "<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>";
      options = { desc = "File browser"; };
    }
  ];
  extraConfigLua = ''
    require("telescope").setup{
      pickers = {
        colorscheme = {
          enable_preview = true
        }
      }
    }
  '';
}

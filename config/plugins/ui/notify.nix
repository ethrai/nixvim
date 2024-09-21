{
  plugins.notify = {
    enable = true;
    fps = 60;
    render = "default";
    timeout = 2500;
    topDown = true;
    stages = "static";
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>,";
      action = ''
        <cmd>lua require("notify").dismiss({ silent = true, pending = true })<cr>
      '';
      options = { desc = "Dismiss All Notifications"; };
    }
    {
      mode = "n";
      key = "<leader>fn";
      action = ''
        <cmd> lua require('telescope').extensions.notify.notify() <cr>
      '';
    }
  ];
  extraConfigLua = ''
    local notify = require("notify")
    notify.setup({
      background_colour = "#000000",
    })

    local filtered_message = { "No information available" }

    -- Override notify function to filter out messages
    ---@diagnostic disable-next-line: duplicate-set-field
    vim.notify = function(message, level, opts)
      local merged_opts = vim.tbl_extend("force", {
        on_open = function(win)
          local buf = vim.api.nvim_win_get_buf(win)
          vim.api.nvim_buf_set_option(buf, "filetype", "markdown")
        end,
      }, opts or {})

      for _, msg in ipairs(filtered_message) do
        if message == msg then
          return
        end
      end
      return notify(message, level, merged_opts)
    end
  '';
}

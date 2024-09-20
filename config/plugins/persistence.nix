{ lib, config, ... }: {
  plugins.persistence = {
    enable = true;
    saveEmpty = true;
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>qs";
      action = ":lua require('persistence').load()<cr>";
      options.silent = true;
    }
    {
      mode = "n";
      key = "<leader>qS";
      action = ":lua require('persistence').load({last = true})<cr>";
      options.silent = true;
    }
    {
      mode = "n";
      key = "<leader>ql";
      action = ":lua require('persistence').save()<cr>";
      options.silent = true;
    }
    {
      mode = "n";
      key = "<leader>qd";
      action = ":lua require('persistence').save({last = true})<cr>";
      options.silent = true;
    }
  ];
}

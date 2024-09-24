{ pkgs, ... }: {
  plugins.lspsaga = {
    enable = true;
    iconsPackage = pkgs.vimPlugins.nvim-web-devicons;
    codeAction = {
      showServerName = true;
      extendGitSigns = true;
    };
    ui = { border = "rounded"; };
    implement.enable = false;
    lightbulb.enable = false;
    outline = {
      autoPreview = true;
      autoClose = true;
    };
    rename = { autoSave = true; };
    symbolInWinbar = {
      enable = true;
      delay = 400;
      folderLevel = 2;
    };
  };

  keymaps = [
    {
      mode = [ "n" ];
      key = "<leader>ch";
      action = "<cmd>Lspsaga incoming_calls ++normal<CR>";
      options = { silent = true; };
    }
    {
      mode = [ "n" ];
      key = "<leader>q";
      action = "<cmd>Lspsaga code_action<CR>";
      options = { silent = true; };
    }
    {
      mode = [ "n" ];
      key = "<leader>j";
      action = "<cmd>Lspsaga diagnostic_jump_next<CR>";
      options = { silent = true; };
    }
    {
      mode = [ "n" ];
      key = "<leader>k";
      action = "<cmd>Lspsaga diagnostic_jump_prev<CR>";
      options = { silent = true; };
    }
    {
      mode = [ "n" ];
      key = "<leader>f";
      action = "<cmd>Lspsaga finder<cr>";
      options = { silent = true; };
    }
    {
      mode = [ "n" ];
      key = "K";
      action = "<cmd>Lspsaga hover_doc<cr>";
      options = { silent = true; };
    }
    {
      mode = [ "n" ];
      key = "<F2>";
      action = "<cmd>Lspsaga rename<cr>";
      options = { silent = true; };
    }
  ];
}

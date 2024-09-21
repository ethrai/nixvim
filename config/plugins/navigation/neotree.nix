{
  keymaps = [{
    mode = [ "n" ];
    key = "<leader>n";
    action = "<cmd>Neotree toggle<cr>";
    options = { desc = "Open/Close Neotree"; };
  }];
  plugins.neo-tree = {
    enable = true;
    autoCleanAfterSessionRestore = true;
    closeIfLastWindow = true;
    popupBorderStyle = "rounded";
    window = {
      position = "left";
      width = 30;
    };
  };
}

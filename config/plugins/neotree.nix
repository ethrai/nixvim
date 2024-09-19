{
  keymaps = [{
    mode = "n";
    key = "<leader>n";
    action = ":Neotree last<cr>";
    options.silent = true;
  }];
  plugins.neo-tree = {
    enable = true;
    autoCleanAfterSessionRestore = true;
    closeIfLastWindow = true;
    popupBorderStyle = "rounded";
    window = {
      position = "float";
      width = 50;
      height = 0.95;
    };
  };
}

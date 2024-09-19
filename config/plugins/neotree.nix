{
  keymaps = [{
    mode = "n";
    key = "<leader>n";
    action = ":Neotree action=focus reveal toggle<CR>";
    options.silent = true;
  }];
  plugins.neo-tree = {
    enable = true;
    autoCleanAfterSessionRestore = true;
    closeIfLastWindow = true;
    popupBorderStyle = "rounded";
    window = {
      width = 30;
      autoExpandWidth = true;
    };
  };
}

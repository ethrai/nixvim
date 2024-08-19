{
  plugins.lspsaga = {
    enable = true;
    implement.enable = true;
    symbolInWinbar.enable = true;
    lightbulb = { enable = false; };
    beacon.enable = false;
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>a";
      action = "<cmd> Lspsaga code_action<CR>";
    }
    {
      mode = "n";
      key = "<F2>";
      action = "<cmd> Lspsaga rename<CR>";
    }
  ];
}

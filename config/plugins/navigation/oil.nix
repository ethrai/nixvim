{
  plugins.oil = {
    enable = true;

    settings = { delete_to_trash = true; };
  };
  keymaps = [{
    mode = [ "n" ];
    key = "<leader>o";
    action = "<cmd>Oil --float<CR>";
    options = { silent = true; };
  }];
}

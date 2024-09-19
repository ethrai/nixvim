{ pkgs, ... }: {
  plugins.lazygit = {
    enable = true;
    settings = {
      floating_window_scaling_factor = 0.9;
      floating_window_use_plenary = 0;
      use_custom_config_file_path = 0;
      use_neovim_remote = 0;
    };
  };

  keymaps = [{
    mode = "n";
    key = "<leader>gg";
    action = "<cmd>LazyGit<CR>";
    options = { desc = "LazyGit (root dir)"; };
  }];
}

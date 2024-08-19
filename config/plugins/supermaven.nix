{ pkgs, ... }: {
  extraPlugins = with pkgs.vimPlugins; [{ plugin = supermaven-nvim; }];
  extraConfigLua = ''
    require("supermaven-nvim").setup {
      keymaps = {
        accept_suggestion = "<C-f>",
        clear_suggestion = "<C-n>",
      },
      log_level = "off" -- set to "off" to disable logging completely
    }
  '';
}

{
  colorschemes.tokyonight = {
    enable = true;
    settings = {
      dim_inactive = false;
      hide_inactive_statusline = false;
      style = "night";
      transparent = false;
      styles = {
        comments = { italic = true; };
        floats = "dark";
        functions = { };
        keywords = { italic = false; };
        sidebars = "dark";
        variables = { };
      };
      terminal_colors = false;
      plugins = {
        telescope = true;
        nvim-cmp = true;
        nvim-dap = true;
        gitsigns = true;
        leap = true;
        lspsaga = true;
        noice = true;
        notify = true;
      };
    };
  };
}

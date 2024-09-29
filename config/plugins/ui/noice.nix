{
  plugins.noice = {
    enable = true;
    messages = {
      enabled = true;
      view = "notify";
    };
    lsp = {
      override = {
        "vim.lsp.util.convert_input_to_markdown_lines" = true;
        "vim.lsp.util.stylize_markdown" = true;
        "cmp.entry.get_documentation" = true;
      };
      signature = { enabled = true; };
      hover.enabled = false;
      progress.enabled = false;
      message.enabled = true;
    };
    popupmenu.enabled = true;
    presets = {
      bottom_search = true;
      command_palette = false;
      inc_rename = false;
      long_message_to_split = false;
      lsp_doc_border = true;
    };
    notify = { enabled = true; };
  };

}

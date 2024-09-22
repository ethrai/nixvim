{
  plugins.noice = {
    enable = true;
    messages = {
      enabled = true;
      view = "notify";
    };
    lsp = {
      override = {
        "cmp.entry.get_documentation" = false;
        "vim.lsp.util.convert_input_to_markdown_lines" = false;
        "vim.lsp.util.stylize_markdown" = false;
      };
      signature = { enabled = true; };
      progress.enabled = false;
      message.enabled = false;
    };
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

{
  plugins.noice = {
    enable = true;
    messages = {
      enabled = true;
      view = "notify";
    };
    lsp = {
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

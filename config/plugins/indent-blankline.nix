{
  plugins.indent-blankline = {
    enable = false;
    settings = {
      exclude = {
        filetypes = [
          "dashboard"
          "lspinfo"
          "packer"
          "checkhealth"
          "help"
          "man"
          "gitcommit"
          "TelescopePrompt"
          "TelescopeResults"
          "''"
        ];
      };
    };
  };
}

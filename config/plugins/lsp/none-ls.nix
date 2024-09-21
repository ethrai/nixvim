{
  plugins.lsp-format.enable = true;
  plugins.none-ls = {
    settings = {

    };
    enable = true;
    sources = {
      code_actions = {
        gomodifytags.enable = true;
        impl.enable = true;
        # refactoring.enable = true;
      };

      diagnostics = {
        checkmake.enable = true;
        dotenv_linter.enable = true;
      };
      formatting = {
        gofumpt.enable = true;
        goimports.enable = true;
        goimports_reviser.enable = true;
        golines.enable = true;
        nixfmt.enable = true;
        shfmt.enable = true;
        asmfmt.enable = true;
      };
    };

  };
}

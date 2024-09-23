{ pkgs, ... }: {
  # plugins.lsp.servers.jdt-language-server.enable = true;
  # TODO: HARDCODED PATH!!! PERFORM SEPPUKU RIGHT NOW
  plugins.nvim-jdtls = {
    enable = true;
    configuration = "/home/sergio/.cache/jdtls/config";
    data.__raw =
      "vim.fn.stdpath 'cache' .. '/jdtls/' .. vim.fn.fnamemodify(vim.fn.getcwd(), ':t')";
    settings = {
      eclipse = { downloadSources = true; };

      format = {
        enabled = true;
        settings = {
          url = "${(pkgs.fetchurl {
            url =
              "https://raw.githubusercontent.com/google/styleguide/gh-pages/eclipse-java-google-style.xml";
            sha256 = "sha256-51Uku2fj/8iNXGgO11JU4HLj28y7kcSgxwjc+r8r35E=";
          })}";
          profile = "GoogleStyle";
        };
      };
      import = {
        gradle = {
          enabled = true;
          wrapper = { enabled = true; };
        };
        maven = { enabled = true; };
      };
      inlayHints = { parameterNames = { enabled = "all"; }; };
      maven = { downloadSources = true; };
      references = { includeDecompiledSources = true; };
      referencesCodeLens = { enabled = true; };
      signatureHelp = { enabled = true; };
    };

  };
}

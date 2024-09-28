{ pkgs, ... }: {
  plugins = {
    lsp-format = { enable = true; };
    helm = { enable = true; };
    lsp = {
      capabilities = ''
        capabilities.textDocument.completion.completionItem.snippetSupport = true
      '';
      enable = true;
      servers = {
        lua-ls = { enable = true; };
        marksman = { enable = true; };
        jsonls = { enable = true; };
        yamlls = { enable = true; };
      };
      keymaps = {
        silent = true;
        lspBuf = {
          gd = {
            action = "definition";
            desc = "Goto Definition";
          };
          gD = {
            action = "declaration";
            desc = "Goto Declaration";
          };
          gt = {
            action = "type_definition";
            desc = "Type Definition";
          };
        };
        diagnostic = {
          "<leader>cd" = {
            action = "open_float";
            desc = "Line Diagnostics";
          };
        };
      };
    };
  };

  extraConfigLua = ''
    local border = "rounded"

    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
      vim.lsp.handlers.hover, {
        border = border
      }
    )

    vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
      vim.lsp.handlers.signature_help, {
        border = border
      }
    )

    vim.diagnostic.config{
      float={border=border}
    };

    require('lspconfig.ui.windows').default_options = {
      border = border
    }
  '';
}

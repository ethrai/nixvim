{ pkgs, ... }: {
  plugins = {
    lsp-lines = { enable = true; };
    lsp-format = { enable = true; };
    helm = { enable = true; };
    lsp = {
      capabilities = ''
        capabilities.textDocument.completion.completionItem.snippetSupport = true
      '';
      enable = true;
      inlayHints = false;
      servers = {
        html = { enable = true; };
        lua-ls = { enable = true; };
        marksman = { enable = true; };
        clangd = { enable = true; };
        cmake = { enable = true; };
        terraformls = { enable = true; };
        tsserver = { enable = true; };
        ansiblels = { enable = true; };
        jsonls = { enable = true; };
        helm-ls = {
          enable = true;
          extraOptions = {
            settings = {
              "helm-ls" = {
                yamlls = {
                  path =
                    "${pkgs.yaml-language-server}/bin/yaml-language-server";
                };
              };
            };
          };
        };
        yamlls = {
          enable = true;
          extraOptions = {
            settings = {
              yaml = {
                schemas = {
                  kubernetes = "'*.yaml";
                  "http://json.schemastore.org/github-workflow" =
                    ".github/workflows/*";
                  "http://json.schemastore.org/github-action" =
                    ".github/action.{yml,yaml}";
                  "http://json.schemastore.org/ansible-stable-2.9" =
                    "roles/tasks/*.{yml,yaml}";
                  "http://json.schemastore.org/kustomization" =
                    "kustomization.{yml,yaml}";
                  "http://json.schemastore.org/ansible-playbook" =
                    "*play*.{yml,yaml}";
                  "http://json.schemastore.org/chart" = "Chart.{yml,yaml}";
                  "https://json.schemastore.org/dependabot-v2" =
                    ".github/dependabot.{yml,yaml}";
                  "https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json" =
                    "*docker-compose*.{yml,yaml}";
                  "https://raw.githubusercontent.com/argoproj/argo-workflows/master/api/jsonschema/schema.json" =
                    "*flow*.{yml,yaml}";
                };
              };
            };
          };
        };
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
          gi = {
            action = "implementation";
            desc = "Goto Implementation";
          };
          gt = {
            action = "type_definition";
            desc = "Type Definition";
          };
          K = {
            action = "hover";
            desc = "Hover";
          };
          "<leader>cw" = {
            action = "workspace_symbol";
            desc = "Workspace Symbol";
          };
          "<F2>" = { action = "rename"; };
        };
        diagnostic = {
          "<leader>cd" = {
            action = "open_float";
            desc = "Line Diagnostics";
          };
          "<leader>j" = {
            action = "goto_next";
            desc = "Next Diagnostic";
          };
          "<leader>k" = {
            action = "goto_prev";
            desc = "Previous Diagnostic";
          };
        };
      };
    };
  };
  keymaps = [{
    mode = "n";
    key = "<leader>a";
    action = "<cmd>lua vim.lsp.buf.code_action() <cr>";
    options = { desc = "Redraw / Clear hlsearch / Diff Update"; };
  }];

  extraConfigLua = ''
    local border = {
        { '┌', 'FloatBorder' },
        { '─', 'FloatBorder' },
        { '┐', 'FloatBorder' },
        { '│', 'FloatBorder' },
        { '┘', 'FloatBorder' },
        { '─', 'FloatBorder' },
        { '└', 'FloatBorder' },
        { '│', 'FloatBorder' },
    }

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

{
  plugins = {
    nix.enable = true;
    nix-develop.enable = true;
    lsp.servers.nixd.enable = false;
    none-ls = {
      sources = {
        formatting.nixfmt.enable = true;
        diagnostics = {
          statix.enable = true;
          deadnix.enable = true;
        };
      };
    };
  };
}

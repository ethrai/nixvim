{
  plugins.lsp = { servers = { jdt-language-server = { enable = true; }; }; };
  plugins.nvim-jdtls = {
    enable = true;
    data = "./idea/jdtls";
  };
}

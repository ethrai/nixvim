{ pkgs, ... }: {
  plugins.lsp.servers.jdt-language-server = {
    enable = true;
    package = pkgs.jdt-language-server;
    cmd = [ "${pkgs.jdt-language-server}/bin/jdtls" ];
  };
  # plugins.nvim-jdtls = {
  #   enable = true;
  #   data.__raw =
  #     "vim.fn.stdpath 'cache' .. '/jdtls/' .. vim.fn.fnamemodify(vim.fn.getcwd(), ':t')";
  #   settings = {
  #     java = {
  #       configuration = {
  #         updateBuildConfiguration = "interactive";
  #         runtimes = [ pkgs.jdk11 pkgs.jdk17 pkgs.jdk pkgs.jdk21 ];
  #       };
  #       codeGeneration = {
  #         toString = {
  #           # template = "${object.className}{${member.name()}=${member.value}, ${otherMembers}}",
  #           useBlocks = true;
  #         };
  #       };
  #       contentProvider = { };
  #       completion = {
  #         filteredTypes = [
  #           "com.sun.*"
  #           "io.micrometer.shaded.*"
  #           "java.awt.*"
  #           "jdk.*"
  #           "sun.*"
  #         ];
  #         importOrder = [ "java" "javax" "com" "org" ];
  #       };
  #       eclipse = { downloadSources = true; };
  #       format = {
  #         enabled = true;
  #         settings = {
  #           url = "${(pkgs.fetchurl {
  #             url =
  #               "https://raw.githubusercontent.com/google/styleguide/gh-pages/eclipse-java-google-style.xml";
  #             sha256 = "sha256-51Uku2fj/8iNXGgO11JU4HLj28y7kcSgxwjc+r8r35E=";
  #           })}";
  #           profile = "GoogleStyle";
  #         };
  #       };
  #       implementationCodeLens = { enabled = true; };
  #       import = {
  #         gradle = {
  #           enabled = true;
  #           wrapper = { enabled = true; };
  #         };
  #         maven = { enabled = true; };
  #       };
  #       inlayHints = { parameterNames = { enabled = "all"; }; };
  #       maven = { downloadSources = true; };
  #       references = { includeDecompiledSources = true; };
  #       referencesCodeLens = { enabled = true; };
  #       signatureHelp = { enabled = true; };
  #       preferred = "fernflower";
  #       sources = {
  #         organizeImports = {
  #           starThreshold = 9999;
  #           staticStarThreshold = 9999;
  #         };
  #       };
  #     };
  #   };
  # };
}

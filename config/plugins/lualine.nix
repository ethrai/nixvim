{ pkgs, ... }: {
  plugins.lualine = {
    enable = true;

    globalstatus = true;

    # +-------------------------------------------------+
    # | A | B | C                             X | Y | Z |
    # +-------------------------------------------------+
    sections = {
      lualine_a = [ "mode" ];
      lualine_b = [ "branch" ];
      lualine_c = [
        "harpoon2"
        { name = "filename"; }
        {
          name = "diff";
          extraConfig = {
            symbols = {
              added = " ";
              modified = " ";
              removed = " ";
            };
          };
        }
      ];

      lualine_x = [
        "diagnostics"

        # Show active language server
        {
          name.__raw = ''
            function()
                local msg = ""
                local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
                local clients = vim.lsp.get_active_clients()
                if next(clients) == nil then
                    return msg
                end
                for _, client in ipairs(clients) do
                    local filetypes = client.config.filetypes
                    if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                        return client.name
                    end
                end
                return msg
            end
          '';
          icon = "";
        }
        "encoding"
        "fileformat"
        "filetype"
      ];
    };
  };

  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "harpoon-lualine";
      src = pkgs.fetchFromGitHub {
        owner = "letieu";
        repo = "harpoon-lualine";
        rev = "2697221ebc7bb0c7779c1f14a4c36c05d4445c28";
        hash = "sha256-GQ5XnVPPEDTzeIr98csSPO89+HInvcW9P3HFp9TuLNI=";
      };
    })
  ];
}

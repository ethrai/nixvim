{ pkgs, ... }: {
  plugins.lualine = {
    enable = true;
    globalstatus = true;
    sections = {
      lualine_a = [ "mode" ];
      lualine_b = [ "branch" ];
      lualine_c = [
        "harpoon2"
        {
          name = "diff";
          extraConfig = {
            symbols = {
              added = " ";
              modified = " ";
              removed = " ";
            };
          };
        }
      ];

      lualine_x = [
        "diagnostics"

        "encoding"
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

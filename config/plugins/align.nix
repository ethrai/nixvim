{ pkgs, ... }: {
  extraPlugins = with pkgs.vimPlugins; [ easy-align ];
  extraConfigVim = ''
        " Start interactive EasyAlign in visual mode (e.g. vipga)
    xmap ga <Plug>(EasyAlign)

    " Start interactive EasyAlign for a motion/text object (e.g. gaip)
    nmap ga <Plug>(EasyAlign)
  '';
  keymaps = [{
    mode = [ "x" "n" ];
    key = "ga";
    action = "<cmd>EasyAlign <cr>";
  }];
}

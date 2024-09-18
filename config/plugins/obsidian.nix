{
  plugins.obsidian = {
    enable = false;
    settings = {
      lazy = true;
      completion = { nvim_cmp = true; };
      new_notes_location = "current_dir";
      workspaces = [{
        name = "secondbrain";
        path = "~/workspace/Notes";
      }];
      dir = "~/workspace/Notes";
      picker = {
        name = "telescope.nvim";
        note_mappings = {
          insert_link = "<leader>l";
          new = "<leader>x";

        };
      };
    };

  };
}

{
  plugins.mini = {
    enable = true;
    modules = {
      align = {
        mappings = {
          start = "ga";
          start_with_preview = "gA";
        };
      };
      pairs = { };
      surround = {
        mappings = {
          add = "gsa";
          delete = "gsd";
          find = "gsf";
          find_left = "gsF";
          highlight = "gsh";
          replace = "gsr";
          update_n_lines = "gsn";
        };
      };
      comment = {
        mappings = {
          comment = "gc";
          comment_line = "gcc";
          comment_visual = "gc";
          textobject = "gc";
        };
      };
    };
  };
}

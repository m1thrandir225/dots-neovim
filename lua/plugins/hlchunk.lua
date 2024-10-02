return {
  "shellRaining/hlchunk.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("hlchunk").setup({
      chunk = {
        enable = true,
        priority = 15,
        style = {
          { fg = "#806d9c" },
          { fg = "#c21f30" },
        },
        use_treesitter = true,
        chars = {
          horizontal_line = "─",
          vertical_line = "│",
          left_top = "╭",
          left_bottom = "╰",
          right_arrow = ">",
        },
        textobject = "",
        max_file_size = 1024 * 1024,
        error_sign = true,
        -- animation related
        duration = 200,
        delay = 300,
      },
      indent = {
        priority = 10,
        style = { vim.api.nvim_get_hl(0, { name = "Whitespace" }) },
        use_treesitter = false,
        chars = { "│" },
        ahead_lines = 5,
        delay = 100,
        enable = true,
      },
      line_num = {
        enable = true,
        style = "#806d9c",
        priority = 10,
        use_treesitter = false,
      },
      blank = {
        enable = true,
        priority = 9,
        chars = { "․" },
      },
    })
  end,
}

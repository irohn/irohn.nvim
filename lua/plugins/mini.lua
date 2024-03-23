return {
  {
    'echasnovski/mini.nvim',
    version = false,
    config = function()
      local move = require("mini.move").setup({
        mappings = {
          left = "<C-A-h>",
          right = "<C-A-l>",
          down = "<C-A-j>",
          up = "<C-A-k>",

          line_left = "<C-A-h>",
          line_right = "<C-A-l>",
          line_down = "<C-A-j>",
          line_up = "<C-A-k>",
        },
        options = {
          reindent_linewise = true,
        },
      })

      local status_line = require("mini.statusline").setup({
        use_icons = true,
        set_vim_settings = true,
      })

      local buffer_tabs = require("mini.tabline").setup({
        show_icons = true,
        set_vim_settings = true,
      })
    end,
  },
}

return {
  {
    "numToStr/Comment.nvim",
    event = "VeryLazy",
    opts = {
      ignore = "^$",
      -- pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
    },
    config = function(_, opts)
      require("Comment").setup(opts)
    end
  },

  -- Highlight todo, notes, etc in comments
  {
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false }
  },
}


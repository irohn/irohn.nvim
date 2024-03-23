local selection = "rose-pine"

return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function ()
      vim.cmd("colorscheme " .. selection)
    end
  },
}

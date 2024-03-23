-- map leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- order matters
require("utils")
require("options")
require("mappings")
require("autocmds")

require("bootstrap")
require("lazy-plugins")


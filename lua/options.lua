-- Enable line numbers by default
vim.opt.number = true

-- Set line numbers relative to cursor
vim.opt.relativenumber = true

-- Set default split behavior
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Disable word wrapping
vim.opt.wrap = false

-- Expand tabs to spaces upon saving
vim.opt.expandtab = true

-- Set tabstop to 4 by default
vim.opt.tabstop = 4

-- Set shift width to 4 (how many tabs to indent)
vim.opt.shiftwidth = 4

-- Sync neovim and system clipboards
vim.opt.clipboard = "unnamedplus"

-- Set how many lines should be at the sge of the screen before starting to scroll
vim.opt.scrolloff = 10

-- Enable cursor line highlight
vim.opt.cursorline = true

-- Enable mouse support
vim.opt.mouse = 'a'

-- Enable virtual edit in block mode
vim.opt.virtualedit = "block"

-- preview changes in a split window
vim.opt.inccommand = "split"

-- ignore case sensitive completions
vim.opt.ignorecase = true

-- Enable gui colors in terminal
vim.opt.termguicolors = true


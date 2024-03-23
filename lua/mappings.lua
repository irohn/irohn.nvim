local u = require("utils")
local noremap = u.noremap
local nnoremap = u.nnoremap
local inoremap = u.inoremap
local tnoremap = u.tnoremap
local vnoremap = u.vnoremap

-- https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
noremap("n", '"Nn"[v:searchforward]', {
  expr = true,
  desc = "Better forward N behaviour",
})
noremap("N", '"nN"[v:searchforward]', {
  expr = true,
  desc = "Better backward N behaviour",
})

inoremap("kj", "<Esc>", { desc = "Make kj <Esc>"})
inoremap("jk", "<Esc>", { desc = "Make jk <Esc>"})

-- stolen from justinmk
nnoremap("/", "ms/", { desc = "Keeps jumplist after forward searching" })
nnoremap("?", "ms?", { desc = "Keeps jumplist after backward searching" })

-- TERMINAL MAPPINGS
tnoremap("<C-h>", "<C-\\><C-n><C-w><C-h>", {
  desc = "Move to the left of the terminal",
})
-- tnoremap("<C-l>", "<C-\\><C-n><C-w><C-l>", {
--   desc = "Move to the right of the terminal",
-- })
tnoremap("<C-j>", "<C-\\><C-n><C-w><C-j>", {
  desc = "Move to the bottom of the terminal",
})
tnoremap("<C-k>", "<C-\\><C-n><C-w><C-k>", {
  desc = "Move to the top of the terminal",
})
tnoremap("<Left>", "<C-\\><C-n>:vertical resize +2<CR>", {
  desc = "Resize terminal window to the left (+2)",
})
tnoremap("<Right>", "<C-\\><C-n>:vertical resize -2<CR>", {
  desc = "Resize terminal window to the right (-2)",
})
tnoremap("<Up>", "<C-\\><C-n>:resize +2<CR>", {
  desc = "Resize terminal window to the top (+2)",
})
tnoremap("<Down>", "<C-\\><C-n>:resize -2<CR>", {
  desc = "Resize terminal window to the bottom (-2)",
})
tnoremap("<A-h", "<C-\\><C-n>:bp<CR>", {
  desc = "Go to previous buffer",
})
tnoremap("<A-l", "<C-\\><C-n>:bn<CR>", {
  desc = "Go to next buffer",
})
tnoremap("<Esc><Esc>", "<C-\\><C-n>", {
  desc = "Go to normal mode using double esc",
})

-- Better movement between windows
nnoremap("<C-h>", "<C-w><C-h>", { desc = "Go to the left window" })
nnoremap("<C-l>", "<C-w><C-l>", { desc = "Go to the right window" })
nnoremap("<C-j>", "<C-w><C-j>", { desc = "Go to the bottom window" })
nnoremap("<C-k>", "<C-w><C-k>", { desc = "Go to the top window" })

-- Resize buffer easier
nnoremap("<Left>", ":vertical resize +2<CR>", {
  desc = "Resize buffer to the left",
})
nnoremap("<Right>", ":vertical resize -2<CR>", {
  desc = "Resize buffer to the right",
})
nnoremap("<Up>", ":resize +2<CR>", {
  desc = "Resize buffer to the top",
})
nnoremap("<Down>", ":resize -2<CR>", {
  desc = "Resize buffer to the bottom",
})

-- Buffer movements
noremap("<A-h>", "<CMD>bp<CR>", { desc = "Go to previous buffer" })
noremap("<A-l>", "<CMD>bn<CR>", { desc = "Go to next buffer" })
noremap("<A-x>", "<CMD>bd<CR>", { desc = "Delete current buffer" })

vnoremap("<", "<gv", { desc = "Dedent current selection" })
vnoremap(">", ">gv", { desc = "Indent current selection" })

-- Clear highlight on <Esc>
noremap("<Esc>", "<cmd>nohlsearch<CR>")


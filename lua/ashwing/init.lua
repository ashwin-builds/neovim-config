vim.g.mapleader = " " -- Set leader key before Lazy

-- set light/dark mode
vim.o.background = "dark"

-- Show absolute line number on the current line, relative numbers elsewhere
vim.opt.number = true
vim.opt.relativenumber = true

-- Show dots or characters for indents and spaces
vim.opt.list = true
vim.opt.listchars = {
  space = '·',    -- dot for spaces
  tab = '···',     -- arrow for tabs
  trail = '·',    -- dot for trailing spaces
  extends = '·',  -- right overflow
  precedes = '·', -- left overflow
}

-- show a vertical line at 100 chars (recommended for readability)
vim.opt.colorcolumn = "100"

-- highlight current line
vim.opt.cursorline = true

-- Use spaces instead of tabs
vim.opt.expandtab = true

-- Number of spaces a <Tab> counts for
vim.opt.tabstop = 4

-- Number of spaces to use for each indentation level
vim.opt.shiftwidth = 4

-- Number of spaces for autoindent
vim.opt.softtabstop = 4

-- Adding keybinds
vim.keymap.set("n", "<leader>w", ":write<CR>") -- write file
vim.keymap.set("n", "<leader>q", ":quit<CR>") -- quit file
vim.keymap.set("n", "<leader>x", ":x<CR>") -- write and quit file
vim.keymap.set({ "n", "v", "x" }, "<leader>ya", ":%y+<CR>") -- copy entire file to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- move down and keep cursor centered
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- move up and keep cursor centered
vim.keymap.set("x", "<leader>p", [["_dP]]) -- paste over highlighted text without changing clipboard
vim.keymap.set({ "n", "v" }, "<leader>d", "\"_d") -- delete wtihout changing clipboard
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) -- find and replace current word
-- highlighted line moving keymap
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") 
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keymaps for markdown preview
vim.keymap.set("n", "<leader>mp", ":MarkdownPreview<CR>")

-- Keymaps for nvim treesitter
vim.keymap.set('n', '<C-n>', ':Explore<CR>', { desc = 'Toggle NvimTree' })

-- Remapping the escape
vim.keymap.set('i', 'jk', '<Esc>', { noremap = true, silent = true })


-- Disable swapfiles
vim.opt.swapfile = false

-- Auto indentation config
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.bo.indentexpr = ""   -- same as :setlocal indentexpr=
  end,
})



require("ashwing.lazy_init")

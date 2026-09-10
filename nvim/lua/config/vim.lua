vim.g.mapleader = " "

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true 

vim.opt.number = true
vim.opt.statuscolumn = "%s %l %r "

-- Map keybindings

vim.keymap.set("n", "<leader>E", ":Ex<CR>", { desc = "Open file explorer" })
vim.keymap.set("n", "<leader>T", ":terminal<CR>", { desc = "Open terminal" })
vim.keymap.set("n", "<Esc>", ":nohlsearch<CR>", { desc = "Clear search highlight" })

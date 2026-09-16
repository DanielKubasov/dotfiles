vim.g.mapleader = " "
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true 

vim.opt.number = true
vim.opt.statuscolumn = "%s %l %r "

-- Map keybindings

vim.keymap.set("n", "<leader>e", ":Ex<CR>", { desc = "Open file explorer" })
vim.keymap.set("n", "<leader>t", ":terminal<CR>", { desc = "Open terminal" })
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', opts)
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>", { desc = "Clear search highlight" })

-- Popup on hover
--
vim.o.updatetime = 250

-- Show diagnostics under the cursor when holding position
vim.api.nvim_create_autocmd("CursorHold", {
  buffer = bufnr,
  callback = function()
    vim.diagnostic.open_float(nil, { focus = false })
  end,
})


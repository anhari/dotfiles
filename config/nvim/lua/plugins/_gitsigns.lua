require('gitsigns').setup({
  signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
  numhl      = true, -- Toggle with `:Gitsigns toggle_numhl`
  linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
  word_diff  = true, -- Toggle with `:Gitsigns toggle_word_diff`
})

vim.api.nvim_set_keymap("n", "]g", ":Gitsigns next_hunk<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "[g", ":Gitsigns prev_hunk<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "]h", ":Gitsigns preview_hunk<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>bl", ":Gitsigns blame_line<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>gg", ":Gitsigns<space>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>gr", ":Gitsigns reset_hunk<CR>", { noremap = true, silent = true })

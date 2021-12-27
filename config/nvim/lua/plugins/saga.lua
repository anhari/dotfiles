require('lspsaga').init_lsp_saga()

-- find the cursor word definition and reference
vim.api.nvim_set_keymap("n", "L", ":Lspsaga lsp_finder<cr>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>ca", ":Lspsaga code_action<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>ca", ":<C-U>Lspsaga range_code_action<CR>", { noremap = true, silent = true })

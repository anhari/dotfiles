require('lspsaga').init_lsp_saga()

-- find the cursor word definition and reference
vim.api.nvim_set_keymap("n", "L", ":Lspsaga hover_doc<cr>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "]r", ":Lspsaga diagnostic_jump_next<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "[r", ":Lspsaga diagnostic_jump_previous<cr>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<C-space>", ":Lspsaga code_action<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-space>", ":<C-U>Lspsaga range_code_action<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<S-space>", ":Lspsaga rename<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "gd", ":lua vim.lsp.buf.definition()<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gp", ":Lspsaga preview_definition<cr>", { noremap = true, silent = true })
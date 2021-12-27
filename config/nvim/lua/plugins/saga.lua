require('lspsaga').init_lsp_saga()

-- find the cursor word definition and reference
vim.api.nvim_set_keymap("n", "L", ":Lspsaga lsp_finder<cr>", { noremap = true, silent = true })

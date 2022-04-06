vim.g.UltiSnipsEditSplit = 'tabdo'

vim.api.nvim_set_keymap("n", "<leader>es", ":UltiSnipsEdit<cr>", { noremap = true, silent = true })

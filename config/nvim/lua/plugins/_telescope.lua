require("telescope").load_extension "packer"

-- Ctrl-P to find files
vim.api.nvim_set_keymap("n", "<C-b>", ":Telescope buffers previewer=false<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-p>", ":Telescope find_files previewer=false<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>y", "<cmd>Telescope lsp_document_symbols<cr>", { noremap = true, silent = true })

require("nvim-tree").setup()
vim.api.nvim_set_keymap("n", "<C-n>", "<cmd>NvimTreeToggle<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-d>", "<cmd>DBUIToggle<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>n", "<cmd>NvimTreeFindFile<cr>", { noremap = true, silent = true })
vim.g.db_ui_use_nerd_fonts = 1

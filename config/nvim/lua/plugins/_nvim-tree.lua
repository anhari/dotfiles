require("nvim-tree").setup()

SetKeyMap("n", "<C-n>", "<cmd>NvimTreeToggle<cr>")
SetKeyMap("n", "<C-d>", "<cmd>DBUIToggle<cr>")
SetKeyMap("n", "<leader>n", "<cmd>NvimTreeFindFile<cr>")

vim.g.db_ui_use_nerd_fonts = 1

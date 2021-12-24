local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

vim.api.nvim_set_keymap("i", "jk", "<ESC>", opts)
vim.api.nvim_set_keymap("n", "<C-p>", ":Telescope find_files<cr>", opts)

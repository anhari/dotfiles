local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Set comma as our leader key
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- NORMAL_MODE = "n"
--------------------------------------------------------------------------------
-- Make 0 behave like ^ and go to the first non-space character
vim.api.nvim_set_keymap("n", "0", "^", opts)

-- Make j and k treat wrapped lines like seperate lines
vim.api.nvim_set_keymap("n", "k", "gk", opts)
vim.api.nvim_set_keymap("n", "j", "gj", opts)

-- Ctrl-P to find files
vim.api.nvim_set_keymap("n", "<C-p>", ":Telescope find_files<cr>", opts)

-- K to grep for the current word under the cursor
vim.api.nvim_set_keymap("n", "K", ':GrepperRg "<C-R><C-W>"<cr>:cw<cr>', opts)

-- T to grep test directories for the current word under the cursor
vim.api.nvim_set_keymap("n", "T", ':GrepperRg "<C-R><C-W>" spec/ test/<cr>:cw<cr>', opts)

-- Ctrl-T to open new tabs
vim.api.nvim_set_keymap("n", "<C-t>", "<esc>:tabnew<cr>", opts)

-- Toggle paste around inserting text from the clipboard
vim.api.nvim_set_keymap("n", "<leader>p", ':set paste<cr>o<esc>"*]p:set nopaste<cr>', opts)

-- Quicker window movement
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", opts)
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", opts)
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", opts)
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", opts)

-- Zoom a vim pane
vim.api.nvim_set_keymap("n", "<leader>-", ":wincmd _<cr>:wincmd |<cr>", opts)

-- Rebalance panes
vim.api.nvim_set_keymap("n", "<leader>=", ":wincmd =<cr>", opts)

-- Find git conflicts
vim.api.nvim_set_keymap("n", "<leader>rb", ':GrepperRg ">>>>>>>"<cr>', opts)

-- Quick mapping to clear the highlighting of the previous search pattern matches
vim.api.nvim_set_keymap("n", "<leader>h", ":nohlsearch<cr>", opts)

-- Reindent entire file
vim.api.nvim_set_keymap("n", "<leader>i", "mzgg=G`z", opts)

-- Scroll the viewport faster
vim.api.nvim_set_keymap("n", "<C-e>", "5<C-e>", opts)
vim.api.nvim_set_keymap("n", "<C-y>", "5<C-y>", opts)

-- Look up the word under the cursor in Apple's dictionary
vim.api.nvim_set_keymap("n", "<leader>di", ":!open dict://<cword><cr><cr>", opts)

-- Pretty print JSON blobs
vim.api.nvim_set_keymap("n", "<leader>jj", ":%!python -m json.tool<cr>", opts)

-- View git commit message
vim.api.nvim_set_keymap("n", "<C-g>", ":GitMessenger<cr>", opts)

-- INSERT_MODE = "i"
--------------------------------------------------------------------------------
-- Exit insert mode with jk and stay on the home row
vim.api.nvim_set_keymap("i", "jk", "<ESC>", opts)

-- COMMAND_MODE = "c"
--------------------------------------------------------------------------------
-- Jump to the beginning of a command using Ctrl-A
vim.api.nvim_set_keymap("c", "<C-a>", "<home>", opts)
-- Jump to the end of a command using Ctrl-E
vim.api.nvim_set_keymap("c", "<C-e>", "<end>", opts)

-- VISUAL_MODE = "v",
--------------------------------------------------------------------------------
-- Ctrl-C copies to the clipboard
vim.api.nvim_set_keymap("v", "<C-c>", "*y", opts)

-- VISUAL_BLOCK_MODE = "x",
--------------------------------------------------------------------------------

-- TERM_MODE = "t",
--------------------------------------------------------------------------------

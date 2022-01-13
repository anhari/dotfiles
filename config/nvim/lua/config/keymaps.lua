-- Set comma as our leader key
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- NORMAL_MODE = "n"
--------------------------------------------------------------------------------
-- Make 0 behave like ^ and go to the first non-space character
vim.api.nvim_set_keymap("n", "0", "^", { noremap = true, silent = true })

-- Make j and k treat wrapped lines like seperate lines
vim.api.nvim_set_keymap("n", "k", "gk", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "j", "gj", { noremap = true, silent = true })

-- K to grep for the current word under the cursor
vim.api.nvim_set_keymap("n", "K", ':GrepperRg "<C-R><C-W>"<cr>:cw<cr>', { noremap = true, silent = true })

-- T to grep test directories for the current word under the cursor
vim.api.nvim_set_keymap("n", "T", ':GrepperRg "<C-R><C-W>" spec/ test/<cr>:cw<cr>', { noremap = true, silent = true })

-- Ctrl-T to open new tabs
vim.api.nvim_set_keymap("n", "<C-t>", "<esc>:tabnew<cr>", { noremap = true, silent = true })

-- Delete marks
vim.api.nvim_set_keymap("n", "<leader>dm", ":delmarks A-Za-z0-9<cr>", { noremap = true, silent = true })

-- Toggle paste around inserting text from the clipboard
vim.api.nvim_set_keymap("n", "<leader>p", ':set paste<cr>o<esc>"*]p:set nopaste<cr>', { noremap = true, silent = true })

-- Format with LSP
vim.api.nvim_set_keymap("n", "<leader>ff", ":lua vim.lsp.buf.formatting()<CR>", { noremap = true, silent = true })

-- Quicker window movement
vim.api.nvim_set_keymap("n", "<C-q>", ":bd term<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

-- Zoom a vim pane
vim.api.nvim_set_keymap("n", "<leader>-", ":wincmd _<cr>:wincmd |<cr>", { noremap = true, silent = true })

-- Rebalance panes
vim.api.nvim_set_keymap("n", "<leader>=", ":wincmd =<cr>", { noremap = true, silent = true })

-- Find git conflicts
vim.api.nvim_set_keymap("n", "<leader>rb", ':GrepperRg ">>>>>>>"<cr>', { noremap = true, silent = true })

-- Quick mapping to clear the highlighting of the previous search pattern matches
vim.api.nvim_set_keymap("n", "<leader>h", ":nohlsearch<cr>", { noremap = true, silent = true })

-- Reindent entire file
vim.api.nvim_set_keymap("n", "<leader>i", "mzgg=G`z", { noremap = true, silent = true })

-- Scroll the viewport faster
vim.api.nvim_set_keymap("n", "<C-e>", "5<C-e>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-y>", "5<C-y>", { noremap = true, silent = true })

-- Look up the word under the cursor in Apple's dictionary
vim.api.nvim_set_keymap("n", "<leader>di", ":!open dict://<cword><cr><cr>", { noremap = true, silent = true })

-- Pretty print JSON blobs
vim.api.nvim_set_keymap("n", "<leader>jj", ":%!python -m json.tool<cr>", { noremap = true, silent = true })

-- View git commit message
vim.api.nvim_set_keymap("n", "M", ":GitMessenger<cr>", { noremap = true, silent = true })

-- Bundle install
vim.api.nvim_set_keymap("n", "<leader>bi", ":VtrSendCommandToRunner! bundle install<cr>", { noremap = true, silent = true })

-- fugitive.vim
-- a Git wrapper so awesome, it should be illegal
-- https://github.com/tpope/vim-fugitive
vim.api.nvim_set_keymap("n", "<leader>go", ":Gbrowse<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>gd", ":Gdiff<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>gl", ":Gclog<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>gb", ":Git blame<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>gs", ":Git<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>gp", ":Git push<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>u", ":Git up<cr>", { noremap = true, silent = true })

-- gist-vim
-- vimscript for gists
-- https://github.com/mattn/gist-vim
-- Settings
vim.g.gist_detect_filetype = 1
vim.g.gist_open_browser_after_post = 1
vim.g.gist_post_private = 1
vim.g.gist_token = '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'
-- Post current file to gist
vim.api.nvim_set_keymap("n", "<leader>gi", ":Gist<cr>", { noremap = true, silent = true })
-- Post current file to public gist
vim.api.nvim_set_keymap("n", "<leader>gip", ":Gist -P<cr>", { noremap = true, silent = true })
-- Post all open buffers to gist
vim.api.nvim_set_keymap("n", "<leader>ga", ":Gist -m<cr>", { noremap = true, silent = true })
-- Post all open buffers to public gist
vim.api.nvim_set_keymap("n", "<leader>gap", ":Gist -m -P<cr>", { noremap = true, silent = true })

-- vim-grepper
-- Helps you win at grep.
-- https://github.com/mhinz/vim-grepper
vim.api.nvim_set_keymap("n", '\\', ":GrepperRg<space>''<left>", { noremap = true, silent = true })

-- INSERT_MODE = "i"
--------------------------------------------------------------------------------
-- Exit insert mode with jk and stay on the home row
vim.api.nvim_set_keymap("i", "jk", "<ESC>", { noremap = true, silent = true })

-- COMMAND_MODE = "c"
--------------------------------------------------------------------------------
-- Jump to the beginning of a command using Ctrl-A
vim.api.nvim_set_keymap("c", "<C-a>", "<home>", { noremap = true, silent = true })
-- Jump to the end of a command using Ctrl-E
vim.api.nvim_set_keymap("c", "<C-e>", "<end>", { noremap = true, silent = true })

-- VISUAL_MODE = "v",
--------------------------------------------------------------------------------
-- Ctrl-C copies to the clipboard
vim.api.nvim_set_keymap("v", "<C-c>", "*y", { noremap = true, silent = true })

-- VISUAL_BLOCK_MODE = "x",
--------------------------------------------------------------------------------

-- TERM_MODE = "t",
--------------------------------------------------------------------------------
-- Quicker window movement
vim.api.nvim_set_keymap("t", "<C-j>", "<C-\\><C-n><C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-k>", "<C-\\><C-n><C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-h>", "<C-\\><C-n><C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-l>", "<C-\\><C-n><C-w>l", { noremap = true, silent = true })

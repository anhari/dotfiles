-- Set comma as our leader key
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- NORMAL_MODE = "n" -----------------------------------------------------------
-- Make 0 behave like ^ and go to the first non-space character
SetKeyMap("n", "0", "^")

-- Make j and k treat wrapped lines like seperate lines
SetKeyMap("n", "k", "gk")
SetKeyMap("n", "j", "gj")

-- K to grep for the current word under the cursor
SetKeyMap("n", "K", ':GrepperRg "<C-R><C-W>"<cr>:cw<cr>')

-- T to grep test directories for the current word under the cursor
SetKeyMap("n", "T", ':GrepperRg "<C-R><C-W>" spec/ test/<cr>:cw<cr>')

-- Ctrl-T to open new tabs
SetKeyMap("n", "<C-t>", "<esc>:tabnew<cr>")

-- Delete marks
SetKeyMap("n", "<leader>dm", ":delmarks A-Za-z0-9<cr>")

-- Show the full path of the current file
SetKeyMap("n", "<leader>w", "1<C-G>")

-- Toggle paste around inserting text from the clipboard
SetKeyMap("n", "<leader>p", ':set paste<cr>o<esc>"*]p:set nopaste<cr>')

-- Format with LSP
SetKeyMap("n", "<leader>ff", ":lua vim.lsp.buf.formatting()<CR>")

-- Quicker window movement
SetKeyMap("n", "<C-q>", ":bd term<CR>")
SetKeyMap("n", "<C-j>", "<C-w>j")
SetKeyMap("n", "<C-k>", "<C-w>k")
SetKeyMap("n", "<C-h>", "<C-w>h")
SetKeyMap("n", "<C-l>", "<C-w>l")

-- Zoom a vim pane
SetKeyMap("n", "<leader>-", ":wincmd _<cr>:wincmd |<cr>")

-- Rebalance panes
SetKeyMap("n", "<leader>=", ":wincmd =<cr>")

-- Find git conflicts
SetKeyMap("n", "<leader>rb", ':GrepperRg ">>>>>>>"<cr>')

-- Quick mapping to clear the highlighting of the previous search pattern matches
SetKeyMap("n", "<leader>h", ":nohlsearch<cr>")

-- Reindent entire file
SetKeyMap("n", "<leader>i", "mzgg=G`z")

-- Scroll the viewport faster
SetKeyMap("n", "<C-e>", "5<C-e>")
SetKeyMap("n", "<C-y>", "5<C-y>")

-- Look up the word under the cursor in Apple's dictionary
SetKeyMap("n", "<leader>di", ":!open dict://<cword><cr><cr>")

-- Pretty print JSON blobs
SetKeyMap("n", "<leader>jj", ":%!python -m json.tool<cr>")

-- View git commit message
SetKeyMap("n", "M", ":GitMessenger<cr>")

-- Bundle install
SetKeyMap("n", "<leader>bi", ":VtrSendCommandToRunner! bundle install<cr>")

-- fugitive.vim
-- a Git wrapper so awesome, it should be illegal
-- https://github.com/tpope/vim-fugitive
SetKeyMap("n", "<leader>go", ":GBrowse<cr>")
SetKeyMap("n", "<leader>gd", ":Git diff<cr>")
SetKeyMap("n", "<leader>gl", ":Git log<cr>")
SetKeyMap("n", "<leader>gb", ":Git blame<cr>")
SetKeyMap("n", "<leader>gs", ":Git<cr>")
SetKeyMap("n", "<leader>gp", ":Git push<cr>")
SetKeyMap("n", "<leader>gu", ":Git up<cr>")
SetKeyMap("n", "<leader>gr", ":Git rebase --interactive origin/master<cr>")

-- gist-vim
-- vimscript for gists
-- https://github.com/mattn/gist-vim
-- Settings
vim.g.gist_detect_filetype = 1
vim.g.gist_open_browser_after_post = 1
vim.g.gist_post_private = 1
vim.g.gist_token = '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'
-- Post current file to gist
SetKeyMap("n", "<leader>gi", ":Gist<cr>")
-- Post current file to public gist
SetKeyMap("n", "<leader>gip", ":Gist -P<cr>")
-- Post all open buffers to gist
SetKeyMap("n", "<leader>ga", ":Gist -m<cr>")
-- Post all open buffers to public gist
SetKeyMap("n", "<leader>gap", ":Gist -m -P<cr>")

-- vim-grepper
-- Helps you win at grep.
-- https://github.com/mhinz/vim-grepper
SetLoudKeyMap("n", '\\', ":GrepperRg<space>")

-- INSERT_MODE = "i" -----------------------------------------------------------
-- Exit insert mode with jk and stay on the home row
SetKeyMap("i", "jk", "<ESC>")


-- COMMAND_MODE = "c" ----------------------------------------------------------
-- Jump to the beginning of a command using Ctrl-A
SetKeyMap("c", "<C-a>", "<home>")
-- Jump to the end of a command using Ctrl-E
SetKeyMap("c", "<C-e>", "<end>")


-- VISUAL_MODE = "v", ----------------------------------------------------------
-- Ctrl-C copies to the clipboard
SetKeyMap("v", "<C-c>", "*y")

-- VISUAL_BLOCK_MODE = "x" -----------------------------------------------------


-- TERM_MODE = "t" -------------------------------------------------------------
-- Quicker window movement
SetKeyMap("t", "<C-j>", "<C-\\><C-n><C-w>j")
SetKeyMap("t", "<C-k>", "<C-\\><C-n><C-w>k")
SetKeyMap("t", "<C-h>", "<C-\\><C-n><C-w>h")
SetKeyMap("t", "<C-l>", "<C-\\><C-n><C-w>l")

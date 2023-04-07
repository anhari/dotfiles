require('gitsigns').setup({
  signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
  numhl      = true, -- Toggle with `:Gitsigns toggle_numhl`
  linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
  word_diff  = true, -- Toggle with `:Gitsigns toggle_word_diff`
})

SetKeyMap("n", "]g", ":Gitsigns next_hunk<CR>")
SetKeyMap("n", "[g", ":Gitsigns prev_hunk<CR>")
SetKeyMap("n", "]h", ":Gitsigns preview_hunk<CR>")
SetKeyMap("n", "<leader>bl", ":Gitsigns blame_line<CR>")
SetLoudKeyMap("n", "<leader>gg", ":Gitsigns<space>")
SetKeyMap("n", "<leader>gr", ":Gitsigns reset_hunk<CR>")

-- vim-test
-- Run your tests at the speed of thought
-- https://github.com/janko-m/vim-test

vim.cmd [[
  let g:test#strategy = 'vtr'
]]

-- Set test runner to rspec until issue #147 is resolved
-- https://github.com/janko-m/vim-test/issues/147
vim.cmd [[
  let g:test#runner_commands = ['RSpec']
]]

-- Leaders
vim.api.nvim_set_keymap("n", "<leader>t", ":TestFile<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>s", ":TestNearest<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>l", ":TestLast<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>a", ":TestSuite<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>gt", ":TestVisit<cr>", { noremap = true, silent = true })

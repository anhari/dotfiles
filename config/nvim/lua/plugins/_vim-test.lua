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
SetKeyMap("n", "<leader>t", ":TestFile<cr>")
SetKeyMap("n", "<leader>s", ":TestNearest<cr>")
SetKeyMap("n", "<leader>l", ":TestLast<cr>")
SetKeyMap("n", "<leader>a", ":TestSuite<cr>")
SetKeyMap("n", "<leader>gt", ":TestVisit<cr>")

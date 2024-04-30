-- vim-test
-- Run your tests at the speed of thought
-- https://github.com/janko-m/vim-test

return {
	"janko-m/vim-test",
	config = function()
		vim.cmd([[
        let g:test#strategy = 'vtr'
      ]])

		-- Leaders
		SetKeyMap("n", "<leader>t", ":TestFile<cr>")
		SetKeyMap("n", "<leader>s", ":TestNearest<cr>")
		SetKeyMap("n", "<leader>l", ":TestLast<cr>")
		SetKeyMap("n", "<leader>a", ":TestSuite<cr>")
		SetKeyMap("n", "<leader>gt", ":TestVisit<cr>")
	end,
}

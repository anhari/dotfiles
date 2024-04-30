-- [name]: gitsigns.nvim
-- [description]: Super fast git decorations implemented purely in Lua.
-- [source]: https://github.com/lewis6991/gitsigns.nvim

return {
	"lewis6991/gitsigns.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("gitsigns").setup({
			signcolumn = true,
			numhl = true,
			linehl = false,
			word_diff = true,
		})

		SetKeyMap("n", "]g", ":Gitsigns next_hunk<CR>")
		SetKeyMap("n", "[g", ":Gitsigns prev_hunk<CR>")
		SetKeyMap("n", "]h", ":Gitsigns preview_hunk<CR>")
		SetKeyMap("n", "<leader>bl", ":Gitsigns blame_line<CR>")
		SetLoudKeyMap("n", "<leader>gg", ":Gitsigns<space>")
		SetKeyMap("n", "<leader>gr", ":Gitsigns reset_hunk<CR>")
	end,
}

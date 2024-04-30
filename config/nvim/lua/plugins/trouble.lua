-- [name]: trouble.nvim
-- [description]: pretty (diagnostic mostly) lists
-- [source]: https://github.com/folke/trouble.nvim

return {
	"folke/trouble.nvim",
	dependencies = "kyazdani42/nvim-web-devicons",
	config = function()
		require("trouble").setup({
			auto_open = true,
			auto_close = true,
		})

		SetKeyMap("n", "]t", "<cmd>lua require('trouble').next({skip_groups = true, jump = true})<CR>")
		SetKeyMap("n", "[t", "<cmd>lua require('trouble').previous({skip_groups = true, jump = true})<CR>")
	end,
}

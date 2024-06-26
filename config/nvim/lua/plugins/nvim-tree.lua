-- [name]: nvim-tree.lua
-- [description]: a file explorer for neovim written in lua
-- [source]: https://github.com/kyazdani42/nvim-tree.lua

return {
	"kyazdani42/nvim-tree.lua",
	dependencies = {
		"kyazdani42/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup()

		SetKeyMap("n", "<C-n>", "<cmd>NvimTreeToggle<cr>")
		SetKeyMap("n", "<C-d>", "<cmd>DBUIToggle<cr>")
		SetKeyMap("n", "<leader>n", "<cmd>NvimTreeFindFile<cr>")

		vim.g.db_ui_use_nerd_fonts = 1
	end,
}

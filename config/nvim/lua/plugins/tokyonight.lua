-- [name]: tokyonight.nvim
-- [description]: A dark and light Neovim theme
-- [source]: https://github.com/folke/tokyonight.nvim

return {
	"folke/tokyonight.nvim",
	config = function()
		vim.g.tokyonight_style = "night"
		vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal" }
	end,
}

-- [name]: todo-comments.nvim
-- [description]: highlight and search for todo comments like TODO, HACK, BUG
--                in your code base.
-- [source]: https://github.com/folke/todo-comments.nvim

return {
	"folke/todo-comments.nvim",
	dependencies = "nvim-lua/plenary.nvim",
	config = function()
		require("todo-comments").setup({})
	end,
}

-- [name]: trouble.nvim
-- [description]: pretty (diagnostic mostly) lists
-- [source]: https://github.com/folke/trouble.nvim

-- return {
-- 	"folke/trouble.nvim",
-- 	dependencies = "kyazdani42/nvim-web-devicons",
-- 	config = function()
-- 		require("trouble").setup({
-- 			auto_open = false,
-- 			auto_close = false,
-- 		})
--
-- 		SetKeyMap("n", "]t", "<cmd>lua require('trouble').next({skip_groups = true, jump = true})<CR>")
-- 		SetKeyMap("n", "[t", "<cmd>lua require('trouble').previous({skip_groups = true, jump = true})<CR>")
-- 	end,
-- }
return {
	"folke/trouble.nvim",
	branch = "dev", -- IMPORTANT!
	dependencies = "nvim-tree/nvim-web-devicons",
	opts = {
		auto_open = true,
		auto_close = true,
	}, -- for default options, refer to the configuration section for custom setup.
}

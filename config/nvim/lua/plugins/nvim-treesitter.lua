-- [name]: nvim-treesitter
-- [description]: a parser generator / incremental parsing library
-- [source]: https://github.com/nvim-treesitter/nvim-treesitter

return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = "all",
			sync_install = false,
			ignore_install = { "phpdoc", "wing" },
			highlight = {
				enable = true,
				disable = {},

				-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
				-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
				-- Using this option may slow down your editor, and you may see some duplicate highlights.
				-- Instead of true it can also be a list of languages
				additional_vim_regex_highlighting = true,
			},
		})
	end,
}

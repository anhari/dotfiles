-- [name]: nvim-lint
-- [description]: an asynchronous linter plugin for neovim
-- [source]: https://github.com/mfussenegger/nvim-lint

return {
	"mfussenegger/nvim-lint",
	config = function()
		require("lint").linters_by_ft = {
			erb = { "erb_lint " },
			javascript = { "eslint" },
			ruby = { "standardrb" },
			sql = { "sqlfluff" },
		}

		vim.api.nvim_create_autocmd({ "BufEnter", "BufReadPost" }, {
			callback = function()
				-- try_lint without arguments runs the linters defined in
				-- `linters_by_ft` for the current filetype
				require("lint").try_lint()

				-- You can call `try_lint` with a linter name or a list of names to
				-- always run specific linters, independent of the `linters_by_ft`
				-- configuration
				-- require("lint").try_lint("cspell")
			end,
		})
	end,
}

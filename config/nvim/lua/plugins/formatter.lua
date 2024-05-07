-- [name]: formatter.nvim
-- [description]: a format runner for neovim
-- [source]: https://github.com/mhartington/formatter.nvim

return {
	"mhartington/formatter.nvim",
	config = function()
		require("formatter").setup({
			logging = true,
			log_level = vim.log.levels.WARN,
			filetype = {
				css = {
					require("formatter.filetypes.css").prettier,
				},
				eruby = {
					require("formatter.filetypes.eruby").htmlbeautifier,
				},
				html = {
					require("formatter.filetypes.html").prettier,
				},
				javascript = {
					require("formatter.filetypes.javascript").prettier,
				},
				javascriptreact = {
					require("formatter.filetypes.javascriptreact").prettier,
				},
				json = {
					require("formatter.filetypes.json").prettier,
				},
				lua = {
					require("formatter.filetypes.lua").stylua,
				},
				markdown = {
					require("formatter.filetypes.markdown").prettier,
				},
				ruby = {
					require("formatter.filetypes.ruby").standardrb,
				},
				rust = {
					require("formatter.filetypes.rust").rustfmt,
				},
				scss = {
					require("formatter.filetypes.css").prettier,
				},
				-- sql = {
				-- 	require("formatter.filetypes.sql").sqlfluff,
				-- },
				typescript = {
					require("formatter.filetypes.typescript").prettier,
				},
				typescriptreact = {
					require("formatter.filetypes.typescriptreact").prettier,
				},
				yaml = {
					require("formatter.filetypes.yaml").prettier,
				},
				["*"] = {
					require("formatter.filetypes.any").remove_trailing_whitespace,
				},
			},
		})

		vim.cmd([[
        augroup FormatAutogroup
        autocmd!
        autocmd BufWritePost * FormatWrite
        augroup END
      ]])
	end,
}

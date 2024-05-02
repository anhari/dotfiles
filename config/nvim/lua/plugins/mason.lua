-- [name]: mason.nvim
-- [description]: easily install and manage LSP servers, DAP servers, linters,
--                and formatters.
-- [source]: https://github.com/williamboman/mason.nvim

return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		"junnplus/nvim-lsp-setup",
	},
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"bashls",
				"cssls",
				"elixirls",
				"eslint",
				"html",
				"jsonls",
				"lua_ls",
				"pylsp",
				"ruby_lsp",
				"rust_analyzer",
				"sqlls",
				"standardrb",
				"svelte",
				"tailwindcss",
				"tsserver",
				"vimls",
			},
		})

		require("lspconfig").bashls.setup({})
		require("lspconfig").cssls.setup({
			settings = {
				css = { validate = true, lint = { unknownAtRules = "ignore" } },
				scss = { validate = true, lint = { unknownAtRules = "ignore" } },
				less = { validate = true, lint = { unknownAtRules = "ignore" } },
			},
		})
		require("lspconfig").elixirls.setup({})
		require("lspconfig").eslint.setup({})
		require("lspconfig").html.setup({})
		require("lspconfig").jsonls.setup({})
		require("lspconfig").lua_ls.setup({})
		require("lspconfig").pylsp.setup({})
		require("lspconfig").ruby_lsp.setup({})
		require("lspconfig").rust_analyzer.setup({})
		require("lspconfig").sqlls.setup({})
		require("lspconfig").standardrb.setup({})
		require("lspconfig").svelte.setup({})
		require("lspconfig").tailwindcss.setup({})
		require("lspconfig").tsserver.setup({})
		require("lspconfig").vimls.setup({})
	end,
}

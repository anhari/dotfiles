-- [name]: lspsaga.nvim
-- [description]: highly performant LSP UI plugin
-- [source]: https://github.com/tami5/lspsaga.nvim

return {
	"tami5/lspsaga.nvim",
	dependencies = "neovim/nvim-lspconfig",
	config = function()
		require("lspsaga").init_lsp_saga()

		SetKeyMap("n", "L", ":Lspsaga hover_doc<cr>")
		SetKeyMap("n", "H", ":lua vim.lsp.buf.references()<cr>")
		SetKeyMap("n", "]r", ":Lspsaga diagnostic_jump_next<cr>")
		SetKeyMap("n", "[r", ":Lspsaga diagnostic_jump_previous<cr>")
		SetKeyMap("n", "<space>", ":lua vim.lsp.buf.code_action()<CR>")
		SetKeyMap("n", "<leader>ca", ":Lspsaga code_action<CR>")
		SetKeyMap("v", "<leader>ca", ":<C-U>Lspsaga range_code_action<CR>")
		SetKeyMap("n", "<leader>rn", ":lua vim.lsp.buf.rename()<CR>")
		SetKeyMap("n", "gd", ":lua vim.lsp.buf.definition()<cr>")
		SetKeyMap("n", "gp", ":Lspsaga preview_definition<cr>")
	end,
}

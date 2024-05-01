-- [name]: telescope.nvim
-- [description]: highly extendable fuzzy finder over lists
-- [source]: https://github.com/nvim-telescope/telescope.nvim

return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-symbols.nvim",
	},
	config = function()
		require("telescope")

		SetKeyMap("n", "<C-b>", ":Telescope buffers previewer=false<cr>")
		SetKeyMap("n", "<C-p>", ":Telescope find_files previewer=false<cr>")
		SetKeyMap("n", "<leader>y", "<cmd>Telescope lsp_document_symbols<cr>")

		vim.api.nvim_create_autocmd("VimEnter", {
			callback = function()
				if vim.fn.argv(0) == "" then
					require("telescope.builtin").find_files()
				end
			end,
		})
	end,
}

-- [name]: nvim-lightbulb
-- [description]: shows a lightbulb in the sign column whenever a
--                textDocument/codeAction is available at the cursors position
-- [source]: https://github.com/kosayoda/nvim-lightbulb

return {
	"kosayoda/nvim-lightbulb",
	config = function()
		vim.cmd([[
        autocmd CursorHold,CursorHoldI,CursorMoved * lua require'nvim-lightbulb'.update_lightbulb()
      ]])
	end,
}

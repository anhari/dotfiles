-- [name]: vim-highlightedyank
-- [description]: Make the yanked region apparent!
-- [source]: https://github.com/machakann/vim-highlightedyank

return {
	"machakann/vim-highlightedyank",
	config = function()
		vim.g.highlightedyank_highlight_duration = 200
	end,
}

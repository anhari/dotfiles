-- [name]: vim-textobj-user
-- [description]: create your own text objects without pain
-- [source]: https://github.com/kana/vim-textobj-user

return {
	"kana/vim-textobj-user",
	dependencies = {
		"kana/vim-textobj-entire", -- (ae) entire document
		"kana/vim-textobj-indent", -- (i) same indentation
		"kana/vim-textobj-line", -- (l) line
		"beloglazov/vim-textobj-quotes", -- (q) quote "" OR ''
	},
}

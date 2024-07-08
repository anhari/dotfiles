-- [name]: tokyonight.nvim
-- [description]: A dark and light Neovim theme
-- [source]: https://github.com/folke/tokyonight.nvim

return {
	"folke/tokyonight.nvim",
	config = function()
		require("tokyonight").setup({
			styles = {
				keywords = { italic = false },
				dim_inactive = true,
			},
			-- on_highlights = function(hl, c)
			-- 	local prompt = "#2d3149"
			-- 	hl.TelescopeNormal = {
			-- 		bg = c.bg_dark,
			-- 		fg = c.fg_dark,
			-- 	}
			-- 	hl.TelescopeBorder = {
			-- 		bg = c.bg_dark,
			-- 		fg = c.bg_dark,
			-- 	}
			-- 	hl.TelescopePromptNormal = {
			-- 		bg = prompt,
			-- 	}
			-- 	hl.TelescopePromptBorder = {
			-- 		bg = prompt,
			-- 		fg = prompt,
			-- 	}
			-- 	hl.TelescopePromptTitle = {
			-- 		bg = prompt,
			-- 		fg = prompt,
			-- 	}
			-- 	hl.TelescopePreviewTitle = {
			-- 		bg = c.bg_dark,
			-- 		fg = c.bg_dark,
			-- 	}
			-- 	hl.TelescopeResultsTitle = {
			-- 		bg = c.bg_dark,
			-- 		fg = c.bg_dark,
			-- 	}
			-- end,
		})
		vim.cmd([[colorscheme tokyonight-storm]])
		vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal" }
	end,
}

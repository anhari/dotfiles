-- [name]: nvim-cmp
-- [description]: a completion engine plugin for neovim,
--                completion sources are installed from
--                external repositories and "sourced".
-- [source]: https://github.com/hrsh7th/nvim-cmp

return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"SirVer/ultisnips",
		"honza/vim-snippets",
		"quangnguyen30192/cmp-nvim-ultisnips",
		"mattn/emmet-vim",
	},
	config = function()
		local lspkind = require("lspkind")
		local cmp = require("cmp")
		vim.g.UltiSnipsExpandTrigger = "<Tab>"
		vim.g.UltiSnipsJumpForwardTrigger = "<Plug>(ultisnips_jump_forward)"
		vim.g.UltiSnipsJumpBackwardTrigger = "<Plug>(ultisnips_jump_backward)"
		vim.g.UltiSnipsListSnippets = "<c-x><c-s>"
		-- vim.g.UltiSnipsRemoveSelectModeMappings = 1
		vim.g.UltiSnipsEditSplit = "tabdo"
		vim.g.UltiSnipsSnippetDirectories = { os.getenv("HOME") .. "/.config/nvim/ultisnips" }

		SetKeyMap("n", "<leader>es", ":UltiSnipsEdit<cr>")

		vim.cmd([[
        au FileType eruby UltiSnipsAddFiletypes eruby
      ]])

		local t = function(str)
			return vim.api.nvim_replace_termcodes(str, true, true, true)
		end

		cmp.setup({
			formatting = {
				fields = { "abbr", "kind" },
				format = lspkind.cmp_format({
					preset = "codicons",
				}),
			},
			snippet = {
				expand = function(args)
					vim.fn["UltiSnips#Anon"](args.body)
				end,
			},
			mapping = {
				["<Tab>"] = cmp.mapping({
					c = function()
						if cmp.visible() then
							cmp.select_next_item({ behavior = cmp.SelectBehavior.Insert })
						else
							cmp.complete()
						end
					end,
					i = function(fallback)
						if cmp.visible() then
							cmp.select_next_item({ behavior = cmp.SelectBehavior.Insert })
						elseif vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
							vim.api.nvim_feedkeys(t("<Plug>(ultisnips_jump_forward)"), "m", true)
						else
							fallback()
						end
					end,
					s = function(fallback)
						if vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
							vim.api.nvim_feedkeys(t("<Plug>(ultisnips_jump_forward)"), "m", true)
						else
							fallback()
						end
					end,
				}),
				["<S-Tab>"] = cmp.mapping({
					c = function()
						if cmp.visible() then
							cmp.select_prev_item({ behavior = cmp.SelectBehavior.Insert })
						else
							cmp.complete()
						end
					end,
					i = function(fallback)
						if cmp.visible() then
							cmp.select_prev_item({ behavior = cmp.SelectBehavior.Insert })
						elseif vim.fn["UltiSnips#CanJumpBackwards"]() == 1 then
							return vim.api.nvim_feedkeys(t("<Plug>(ultisnips_jump_backward)"), "m", true)
						else
							fallback()
						end
					end,
					s = function(fallback)
						if vim.fn["UltiSnips#CanJumpBackwards"]() == 1 then
							return vim.api.nvim_feedkeys(t("<Plug>(ultisnips_jump_backward)"), "m", true)
						else
							fallback()
						end
					end,
				}),
				["<C-n>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "c" }),
				["<C-p>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "c" }),
				["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
				["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
				["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
				["<C-y>"] = cmp.config.disable,
				["<C-e>"] = cmp.mapping({
					i = cmp.mapping.abort(),
					c = cmp.mapping.close(),
				}),
				["<CR>"] = cmp.mapping.confirm({ select = true }),
			},
			sources = cmp.config.sources({
				{ name = "ultisnips" },
				{ name = "nvim_lsp" },
				{ name = "buffer" },
			}),
		})

		cmp.setup.cmdline("/", {
			sources = {
				{ name = "buffer" },
			},
		})

		cmp.setup.cmdline(":", {
			sources = cmp.config.sources({
				{ name = "path" },
			}, {
				{ name = "cmdline" },
			}),
		})
	end,
}

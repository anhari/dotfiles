local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

return require("lazy").setup({
	{
		"metalelf0/jellybeans-nvim",
		dependencies = "rktjmp/lush.nvim",
	},
	"adelarsq/vim-matchit",
	"andrewradev/splitjoin.vim",
	"christoomey/vim-conflicted",
	"christoomey/vim-run-interactive",
	"christoomey/vim-sort-motion",
	"christoomey/vim-system-copy",
	"christoomey/vim-tmux-navigator",
	{
		"christoomey/vim-tmux-runner",
		config = function()
			-- VTR [Vim Tmux Runner]
			-- Vim and tmux, sittin' in a tree...
			-- https://github.com/christoomey/vim-tmux-runner
			vim.g.VtrPercentage = 33

			SetKeyMap("n", "<leader>xx", ":wa<cr>:VtrSendCommandToRunner!<cr>")
			SetKeyMap("n", "<leader>v<space>", ":VtrClearRunner<cr>")
			SetKeyMap("n", "<leader>va", ":VtrAttachToPane<cr>")
			SetLoudKeyMap("n", "<leader>vx", ":VtrSendCommandToRunner!<space>")
			SetKeyMap("n", "<leader>vd", ":VtrSendCtrlD<cr>")
			SetKeyMap("n", "<leader>vc", ":VtrSendCtrlC<cr>")
			SetKeyMap("n", "<leader>vf", ":VtrSendFile<cr>")
			SetKeyMap("n", "<leader>vh", ":VtrFlushCommand<cr>")
			SetKeyMap("n", "<leader>vk", ":VtrKillRunner<cr>")
			SetKeyMap("n", "<leader>vo", ":VtrOpenRunner<cr>")
			SetKeyMap("n", "<leader>vr", ":VtrFocusRunner<cr>")
			SetKeyMap("n", "<leader>vv", ":VtrSendLinesToRunner<cr>")
			SetKeyMap("n", "<leader>vv", ":VtrSendLinesToRunner<cr>")
		end,
	},
	"djoshea/vim-autoread",
	{
		"folke/zen-mode.nvim",
		dependencies = "folke/twilight.nvim",
		config = function()
			require("zen-mode").setup({
				window = {
					backdrop = 1,
					width = 100, -- width of the Zen window
					height = 1, -- height of the Zen window
					options = {
						signcolumn = "no", -- disable signcolumn
						number = false, -- disable number column
						relativenumber = false, -- disable relative numbers
						cursorline = false, -- disable cursorline
						cursorcolumn = false, -- disable cursor column
						foldcolumn = "0", -- disable fold column
						list = false, -- disable whitespace characters
					},
				},
				plugins = {
					options = {
						enabled = true,
						ruler = false, -- disables the ruler text in the cmd line area
						showcmd = false, -- disables the command in the last line of the screen
					},
					twilight = { enabled = true }, -- enable to start Twilight when zen mode opens
					gitsigns = { enabled = false }, -- disables git signs
					tmux = { enabled = false }, -- disables the tmux statusline
					kitty = {
						enabled = true,
						font = "+12", -- font size increment
					},
				},
			})
		end,
	},
	{
		"folke/todo-comments.nvim",
		dependencies = "nvim-lua/plenary.nvim",
		config = function()
			require("todo-comments").setup({})
		end,
	},
	{
		"folke/tokyonight.nvim",
		config = function()
			vim.g.tokyonight_style = "night"
			vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal" }
		end,
	},
	{
		"folke/trouble.nvim",
		dependencies = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup({
				auto_open = true,
				auto_close = true,
			})

			SetKeyMap("n", "]t", "<cmd>lua require('trouble').next({skip_groups = true, jump = true})<CR>")
			SetKeyMap("n", "[t", "<cmd>lua require('trouble').previous({skip_groups = true, jump = true})<CR>")
		end,
	},

	-- Autocomplete
	{
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

			-- vim.cmd([[
			--   autocmd FileType sql,mysql,plsql lua require('cmp').setup.buffer({ sources = {{ name = 'vim-dadbod-completion' }} })
			-- ]])

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
	},

	{
		"janko-m/vim-test",
		complete = function()
			-- vim-test
			-- Run your tests at the speed of thought
			-- https://github.com/janko-m/vim-test
			vim.cmd([[
        let g:test#strategy = 'vtr'
      ]])

			-- Set test runner to rspec until issue #147 is resolved
			-- https://github.com/janko-m/vim-test/issues/147
			vim.cmd([[
        let g:test#runner_commands = ['RSpec']
      ]])

			-- Leaders
			SetKeyMap("n", "<leader>t", ":TestFile<cr>")
			SetKeyMap("n", "<leader>s", ":TestNearest<cr>")
			SetKeyMap("n", "<leader>l", ":TestLast<cr>")
			SetKeyMap("n", "<leader>a", ":TestSuite<cr>")
			SetKeyMap("n", "<leader>gt", ":TestVisit<cr>")
		end,
	},

	-- Git
	{
		"junegunn/gv.vim",
		dependencies = { "tpope/vim-fugitive" },
	},
	{
		"lewis6991/gitsigns.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("gitsigns").setup({
				signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
				numhl = true, -- Toggle with `:Gitsigns toggle_numhl`
				linehl = false, -- Toggle with `:Gitsigns toggle_linehl`
				word_diff = true, -- Toggle with `:Gitsigns toggle_word_diff`
			})

			SetKeyMap("n", "]g", ":Gitsigns next_hunk<CR>")
			SetKeyMap("n", "[g", ":Gitsigns prev_hunk<CR>")
			SetKeyMap("n", "]h", ":Gitsigns preview_hunk<CR>")
			SetKeyMap("n", "<leader>bl", ":Gitsigns blame_line<CR>")
			SetLoudKeyMap("n", "<leader>gg", ":Gitsigns<space>")
			SetKeyMap("n", "<leader>gr", ":Gitsigns reset_hunk<CR>")
		end,
	},
	"rhysd/git-messenger.vim",

	-- Custom vim objects
	{
		"kana/vim-textobj-user",
		dependencies = {
			"kana/vim-textobj-entire",
			"kana/vim-textobj-indent",
			"kana/vim-textobj-line",
			"beloglazov/vim-textobj-quotes",
		},
	},

	{
		"kyazdani42/nvim-tree.lua",
		dependencies = {
			"kyazdani42/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup()

			SetKeyMap("n", "<C-n>", "<cmd>NvimTreeToggle<cr>")
			SetKeyMap("n", "<C-d>", "<cmd>DBUIToggle<cr>")
			SetKeyMap("n", "<leader>n", "<cmd>NvimTreeFindFile<cr>")

			vim.g.db_ui_use_nerd_fonts = 1
		end,
	},
	{
		"machakann/vim-highlightedyank",
		config = function()
			-- vim-highlightedyank
			-- Make the yanked region apparent!
			-- https://github.com/machakann/vim-highlightedyank
			vim.g.highlightedyank_highlight_duration = 200
		end,
	},
	{ "mattn/vim-gist", dependencies = "mattn/webapi-vim" },
	"mhinz/vim-grepper",

	-- Language servers
	"onsails/lspkind-nvim",
	{
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
			require("lspconfig").cssls.setup({})
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
	},
	{
		"kosayoda/nvim-lightbulb",
		config = function()
			vim.cmd([[
        autocmd CursorHold,CursorHoldI,CursorMoved * lua require'nvim-lightbulb'.update_lightbulb()
      ]])
		end,
	},
	{
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
	},
	{
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
					sql = {
						require("formatter.filetypes.sql").sqlfluff,
					},
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
	},
	{
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
					-- try_lint without arguments runs the linters defined in `linters_by_ft`
					-- for the current filetype
					require("lint").try_lint()

					-- You can call `try_lint` with a linter name or a list of names to always
					-- run specific linters, independent of the `linters_by_ft` configuration
					-- require("lint").try_lint("cspell")
				end,
			})
		end,
	},

	-- IDE features
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "kyazdani42/nvim-web-devicons", lazy = true },
		config = function()
			require("lualine").setup({
				options = {
					icons_enabled = true,
					theme = "auto",
					component_separators = { left = "", right = "" },
					section_separators = { left = "", right = "" },
					disabled_filetypes = {},
					always_divide_middle = true,
				},
				sections = {
					lualine_a = { "mode" },
					lualine_b = { "branch", "diff", "diagnostics" },
					lualine_c = { "filename" },
					lualine_x = { "filetype" },
					lualine_y = { "progress" },
					lualine_z = { "location" },
				},
				inactive_sections = {
					lualine_a = {},
					lualine_b = {},
					lualine_c = { "filename" },
					lualine_x = { "location" },
					lualine_y = {},
					lualine_z = {},
				},
				tabline = {},
				extensions = {},
			})
		end,
	},
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-symbols.nvim",
		},
		config = function()
			require("telescope")

			-- Ctrl-P to find files
			SetKeyMap("n", "<C-b>", ":Telescope buffers previewer=false<cr>")
			SetKeyMap("n", "<C-p>", ":Telescope find_files previewer=false<cr>")
			SetKeyMap("n", "<leader>y", "<cmd>Telescope lsp_document_symbols<cr>")
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects",
			-- 'nvim-treesitter/nvim-treesitter-context',
		},
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = "all",
				sync_install = false,
				ignore_install = { "phpdoc", "wing" },
				highlight = {
					enable = true,
					disable = {},

					-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
					-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
					-- Using this option may slow down your editor, and you may see some duplicate highlights.
					-- Instead of true it can also be a list of languages
					additional_vim_regex_highlighting = true,
				},
			})
		end,
	},
	"pbrisbin/vim-mkdir",
	"raimondi/delimitMate",
	"senbrow/vim-noerror-compiler",
	"tommcdo/vim-exchange",
	"tpope/vim-abolish",
	"tpope/vim-bundler",
	{
		"tpope/vim-dadbod",
		dependencies = {
			"kristijanhusak/vim-dadbod-ui",
			"kristijanhusak/vim-dadbod-completion",
		},
	},
	"tpope/vim-dispatch",
	"tpope/vim-endwise",
	"tpope/vim-eunuch",
	"tpope/vim-fugitive",
	"tpope/vim-projectionist",
	"tpope/vim-ragtag",
	"tpope/vim-rails",
	"tpope/vim-rake",
	"tpope/vim-repeat",
	"tpope/vim-rhubarb",
	"tpope/vim-scriptease",
	"tpope/vim-surround",
	"tpope/vim-unimpaired",
	"vim-scripts/ReplaceWithRegister",
	"vim-scripts/tComment",
	"junegunn/goyo.vim",
})

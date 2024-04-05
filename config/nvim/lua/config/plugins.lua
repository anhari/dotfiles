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
    dependencies = "rktjmp/lush.nvim"
  },
  "adelarsq/vim-matchit",
  "andrewradev/splitjoin.vim",
  "christoomey/vim-conflicted",
  "christoomey/vim-run-interactive",
  "christoomey/vim-sort-motion",
  "christoomey/vim-system-copy",
  "christoomey/vim-tmux-navigator",
  "christoomey/vim-tmux-runner",
  "derekprior/vim-trimmer",
  "djoshea/vim-autoread",
  {
    "folke/zen-mode.nvim",
    dependencies = "folke/twilight.nvim",
    config = function()
      require("zen-mode").setup {
        window = {
          backdrop = 1,
          width = 100,              -- width of the Zen window
          height = 1,               -- height of the Zen window
          options = {
            signcolumn = "no",      -- disable signcolumn
            number = false,         -- disable number column
            relativenumber = false, -- disable relative numbers
            cursorline = false,     -- disable cursorline
            cursorcolumn = false,   -- disable cursor column
            foldcolumn = "0",       -- disable fold column
            list = false,           -- disable whitespace characters
          },
        },
        plugins = {
          options = {
            enabled = true,
            ruler = false,                -- disables the ruler text in the cmd line area
            showcmd = false,              -- disables the command in the last line of the screen
          },
          twilight = { enabled = true },  -- enable to start Twilight when zen mode opens
          gitsigns = { enabled = false }, -- disables git signs
          tmux = { enabled = false },     -- disables the tmux statusline
          kitty = {
            enabled = true,
            font = "+12", -- font size increment
          },
        },
      }
    end
  },
  {
    "folke/todo-comments.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {}
    end
  },
  "folke/tokyonight.nvim",
  {
    "folke/trouble.nvim",
    dependencies = "kyazdani42/nvim-web-devicons",
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
      "mattn/emmet-vim"
    }
  },

  "janko-m/vim-test",

  -- Git
  {
    "junegunn/gv.vim",
    dependencies = { "tpope/vim-fugitive" }
  },
  {
    "lewis6991/gitsigns.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
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
    'kyazdani42/nvim-tree.lua',
    dependencies = {
      'kyazdani42/nvim-web-devicons',
    },
  },
  {
    "lewis6991/spellsitter.nvim",
    config = function()
      require("spellsitter").setup()
    end
  },
  "machakann/vim-highlightedyank",
  { "mattn/vim-gist", dependencies = "mattn/webapi-vim" },
  "mhinz/vim-grepper",

  -- Language servers
  "onsails/lspkind-nvim",
  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
      "junnplus/nvim-lsp-setup"
    }
  },
  "kosayoda/nvim-lightbulb",
  {
    "tami5/lspsaga.nvim",
    dependencies = "neovim/nvim-lspconfig",
  },

  -- IDE features
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "kyazdani42/nvim-web-devicons", lazy = true }
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-symbols.nvim"
    }
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
      -- 'nvim-treesitter/nvim-treesitter-context',
    }
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
      "kristijanhusak/vim-dadbod-completion"
    }
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

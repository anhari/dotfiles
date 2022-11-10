local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim",
    install_path })
end

vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

return require("packer").startup(function(use)
  use { "metalelf0/jellybeans-nvim", requires = "rktjmp/lush.nvim" }
  use "adelarsq/vim-matchit"
  use "andrewradev/splitjoin.vim"
  use "beloglazov/vim-textobj-quotes"
  use "christoomey/vim-conflicted"
  use "christoomey/vim-run-interactive"
  use "christoomey/vim-sort-motion"
  use "christoomey/vim-system-copy"
  use "christoomey/vim-tmux-navigator"
  use "christoomey/vim-tmux-runner"
  use "derekprior/vim-trimmer"
  use "djoshea/vim-autoread"
  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {
      }
    end
  }
  use "folke/tokyonight.nvim"
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
  }

  -- Autocomplete
  use {
    "hrsh7th/nvim-cmp",
    requires = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "SirVer/ultisnips",
      "honza/vim-snippets",
      "quangnguyen30192/cmp-nvim-ultisnips",
      "mattn/emmet-vim"
    }
  }

  use "janko-m/vim-test"

  -- Git
  use {
    "junegunn/gv.vim",
    require = "tpope/vim-fugitive"
  }
  use {
    "lewis6991/gitsigns.nvim",
    requires = { "nvim-lua/plenary.nvim" },
  }
  use "rhysd/git-messenger.vim"

  -- Custom vim objects
  use "kana/vim-textobj-entire"
  use "kana/vim-textobj-indent"
  use "kana/vim-textobj-line"
  use "kana/vim-textobj-user"
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    },
  }
  use {
    "lewis6991/spellsitter.nvim",
    config = function()
      require("spellsitter").setup()
    end
  }
  use "machakann/vim-highlightedyank"
  use { "mattn/vim-gist", requires = "mattn/webapi-vim" }
  use "mhinz/vim-grepper"

  -- Language servers
  use "onsails/lspkind-nvim"
  use {
    "williamboman/mason.nvim",
    requires = {
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
      "WhoIsSethDaniel/mason-tool-installer.nvim",
      "junnplus/nvim-lsp-setup"
    }
  }
  use "kosayoda/nvim-lightbulb"
  use {
    "tami5/lspsaga.nvim",
    requires = "neovim/nvim-lspconfig",
  }

  -- IDE features
  use {
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true }
  }
  use {
    "nvim-telescope/telescope.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-packer.nvim"
    }
  }
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    requires = {
      'nvim-treesitter/nvim-treesitter-textobjects',
      'nvim-treesitter/nvim-treesitter-context',
    }
  }
  use "pbrisbin/vim-mkdir"
  use "raimondi/delimitMate"
  use "senbrow/vim-noerror-compiler"
  use "tommcdo/vim-exchange"
  use "tpope/vim-abolish"
  use "tpope/vim-bundler"
  use {
    "tpope/vim-dadbod",
    requires = {
      "kristijanhusak/vim-dadbod-ui",
      "kristijanhusak/vim-dadbod-completion"
    }
  }
  use "tpope/vim-dispatch"
  use "tpope/vim-endwise"
  use "tpope/vim-eunuch"
  use "tpope/vim-fugitive"
  use "tpope/vim-projectionist"
  use "tpope/vim-ragtag"
  use "tpope/vim-rails"
  use "tpope/vim-rake"
  use "tpope/vim-repeat"
  use "tpope/vim-rhubarb"
  use "tpope/vim-scriptease"
  use "tpope/vim-surround"
  use "tpope/vim-unimpaired"
  use "vim-scripts/ReplaceWithRegister"
  use "vim-scripts/tComment"
  use "wbthomason/packer.nvim"

  if packer_bootstrap then
    require("packer").sync()
  end
end)

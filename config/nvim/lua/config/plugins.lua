local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
end

vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

return require("packer").startup(function(use)
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
  use "gleam-lang/gleam.vim"
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
  -- use "github/copilot.vim"
  use {
    "hrsh7th/nvim-cmp",
    requires = {
      "neovim/nvim-lspconfig",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "quangnguyen30192/cmp-nvim-ultisnips"
    }
  }
  use "janko-m/vim-test"
  use { "junegunn/gv.vim", require = "tpope/vim-fugitive" }
  use "kana/vim-textobj-entire"
  use "kana/vim-textobj-indent"
  use "kana/vim-textobj-line"
  use "kana/vim-textobj-user"
  use {
    "kyazdani42/nvim-tree.lua",
    requires = {
      "kyazdani42/nvim-web-devicons",
    },
    config = function() require("nvim-tree").setup {} end
  }
  use "kosayoda/nvim-lightbulb"
  use {
    "lewis6991/gitsigns.nvim",
    requires = { "nvim-lua/plenary.nvim" },
  }
  use {
    "lewis6991/spellsitter.nvim",
    config = function()
      require("spellsitter").setup()
    end
  }
  use "machakann/vim-highlightedyank"
  use "mattn/emmet-vim"
  use { "mattn/vim-gist", requires = "mattn/webapi-vim" }
  use "mhinz/vim-grepper"
  use "morhetz/gruvbox"
  use "onsails/lspkind-nvim"
  use { "neovim/nvim-lspconfig", requires = "williamboman/nvim-lsp-installer" }
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
    -- commit = '668de0951a36ef17016074f1120b6aacbe6c4515',
    run = ":TSUpdate",
    requires = {
      'nvim-treesitter/nvim-treesitter-textobjects'
    }
  }
  use "pbrisbin/vim-mkdir"
  use "raimondi/delimitMate"
  use "rebelot/kanagawa.nvim"
  use "rhysd/git-messenger.vim"
  use "sainnhe/everforest"
  use "senbrow/vim-noerror-compiler"
  use {
    "SirVer/ultisnips",
    requires = { { "honza/vim-snippets", rtp = "." } },
    config = function()
      vim.g.UltiSnipsExpandTrigger = "<Plug>(ultisnips_expand)"
      vim.g.UltiSnipsJumpForwardTrigger = "<Plug>(ultisnips_jump_forward)"
      vim.g.UltiSnipsJumpBackwardTrigger = "<Plug>(ultisnips_jump_backward)"
      vim.g.UltiSnipsListSnippets = "<c-x><c-s>"
      vim.g.UltiSnipsRemoveSelectModeMappings = 0
    end
  }
  use {
    "tami5/lspsaga.nvim",
    requires = "neovim/nvim-lspconfig",
  }
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

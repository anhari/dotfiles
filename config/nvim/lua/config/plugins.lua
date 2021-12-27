local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

return require('packer').startup(function(use)
  use 'adelarsq/vim-matchit'
  use 'airblade/vim-gitgutter'
  use 'andrewradev/splitjoin.vim'
  use 'beloglazov/vim-textobj-quotes'
  use 'christoomey/vim-conflicted'
  use 'christoomey/vim-run-interactive'
  use 'christoomey/vim-sort-motion'
  use 'christoomey/vim-system-copy'
  use 'christoomey/vim-tmux-navigator'
  use 'christoomey/vim-tmux-runner'
  use 'derekprior/vim-trimmer'
  use 'djoshea/vim-autoread'
  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
  use 'folke/tokyonight.nvim'
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
  use 'github/copilot.vim'
  use {
    'glepnir/lspsaga.nvim',
    requires = "noevima/nvim-lspconfig",
  }
  use 'janko-m/vim-test'
  use { 'junegunn/gv.vim', require = 'tpope/vim-fugitive' }
  use 'kana/vim-textobj-entire'
  use 'kana/vim-textobj-indent'
  use 'kana/vim-textobj-line'
  use 'kana/vim-textobj-user'
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
  }
  use "machakann/vim-highlightedyank"
  use 'mattn/emmet-vim'
  use { 'mattn/vim-gist', requires = 'mattn/webapi-vim' }
  use 'mhinz/vim-grepper'
  use 'morhetz/gruvbox'
  use { 'neovim/nvim-lspconfig', requires = 'williamboman/nvim-lsp-installer'}
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = 'nvim-lua/plenary.nvim'
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'pbrisbin/vim-mkdir'
  use 'raimondi/delimitMate'
  use 'rhysd/git-messenger.vim'
  use 'tommcdo/vim-exchange'
  use 'tpope/vim-abolish'
  use 'tpope/vim-bundler'
  use 'tpope/vim-dadbod'
  use 'tpope/vim-dispatch'
  use 'tpope/vim-endwise'
  use 'tpope/vim-eunuch'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-projectionist'
  use 'tpope/vim-ragtag'
  use 'tpope/vim-rails'
  use 'tpope/vim-rake'
  use 'tpope/vim-repeat'
  use 'tpope/vim-rhubarb'
  use 'tpope/vim-scriptease'
  use 'tpope/vim-surround'
  use 'tpope/vim-unimpaired'
  use 'vim-scripts/ReplaceWithRegister'
  use 'vim-scripts/tComment'
  use 'wbthomason/packer.nvim'

  if packer_bootstrap then
    require('packer').sync()
  end
end)

" anhari's VIM file.
" first created on Aug 6 2015
" most customizations can be found in vim/plugins

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

set encoding=utf-8

" Leader
let mapleader = " "
let g:mapleader = ','

set backspace=2                   " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile                    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set ruler                         " show the cursor position all the time
set showcmd                       " display incomplete commands
set incsearch                     " do incremental searching
set laststatus=2                  " Always display the status line
set autowrite                     " Automatically :write before running commands
set autoread                      " detect file changes made outside of vim
set ignorecase                    " case insensitive search
set smartcase                     " case sensitive search if uppercase is used
set nofoldenable                  " disable folding
set hlsearch                      " highlight search results
set cursorline                    " highlight the cursor line
set mouse=a                       " enable the mouse in all modes
set backspace=indent,eol,start    " Backspace deletes like usual
set background=dark               " Use a dark background
syntax enable                     " enable syntax highlighting
set termguicolors                 " set termguicolors

let g:gruvbox_italic=1
colorscheme gruvbox

" Numbers
set number
set numberwidth=5

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Use one space, not two, after punctuation.
set nojoinspaces

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Always use vertical diffs
set diffopt+=vertical

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Milliseconds to wait for a key entry to complete
set ttimeoutlen=50

filetype plugin indent on

" When the type of shell script is /bin/sh, assume a POSIX-compatible
" shell for syntax highlighting purposes.
let g:is_posix = 1

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

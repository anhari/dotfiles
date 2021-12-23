" anhari's VIM file.
" first created on Aug 6 2015
" most customizations can be found in vim/plugins

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

set encoding=utf-8

" Leader
let g:mapleader = ','

syntax enable                     " enable syntax highlighting
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
set hidden                        " Don't require saving before closing a buffer
set autoread                      " detect file changes made outside of vim
set ignorecase                    " case insensitive search
set smartcase                     " case sensitive search if uppercase is used
set nofoldenable                  " disable folding
set hlsearch                      " highlight search results
set cursorline                    " highlight the cursor line
set mouse=a                       " enable the mouse in all modes
set backspace=indent,eol,start    " Backspace deletes like usual
set previewheight=40              " Increase preview window height
set background=dark               " Use a dark background
set termguicolors                 " set termguicolors
set inccommand=split

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

" let g:tokyonight_style = 'night'

nnoremap zp zfap


" lua << EOF
"   require("trouble").setup{}
" EOF
"
" lua << EOF
"   require("todo-comments").setup {}
" EOF

" lua << EOF
"   require("lspconfig").solargraph.setup{
"     cmd = { "solargraph", "stdio" },
"     filetypes = { "ruby" },
"     init_options = {
"       formatting = true
"     },
"     settings = {
"       solargraph = {
"         diagnostics = true
"       }
"     },
"   }
" EOF

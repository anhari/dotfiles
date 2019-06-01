" elixir-ls
" A frontend-independent IDE "smartness" server for Elixir. Implements the
" JSON-based "Language Server Protocol" standard and provides debugger support
" via VS Code's debugger protocol.
" https://github.com/JakeBecker/elixir-ls

" https://kassioborges.dev/2019/03/21/elixir-ls-on-coc.nvim.html
let g:elixirls = {
  \ 'path': printf('%s/%s', stdpath('config'), 'bundle/elixir-ls'),
  \ }

let g:elixirls.lsp = printf(
  \ '%s/%s',
  \ g:elixirls.path,
  \ 'release/language_server.sh')

function! g:elixirls.compile(...)
  let l:commands = join([
    \ 'mix local.hex --force',
    \ 'mix local.rebar --force',
    \ 'mix deps.get',
    \ 'mix compile',
    \ 'mix elixir_ls.release'
    \ ], '&&')

  echom '>>> Compiling elixirls'
  silent call system(l:commands)
  echom '>>> elixirls compiled'
endfunction

call coc#config('languageserver', {
  \ 'elixir': {
  \   'command': g:elixirls.lsp,
  \   'trace.server': 'verbose',
  \   'filetypes': ['elixir', 'eelixir']
  \ }
  \})


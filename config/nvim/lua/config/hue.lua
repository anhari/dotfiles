vim.cmd [[
  augroup hue
    autocmd!
    autocmd VimLeave * silent! :!hueadm group 5 scene=BiQOA6eIZzsMywf transitiontime=0
    autocmd BufEnter,BufRead,BufNewFile *.{rb,rbs,html} silent! :! hueadm group 5 scene=h3cmO6sijEnTlRq transitiontime=0
    autocmd BufEnter,BufRead,BufNewFile *.{sql,ts,tsx,lua,css} silent! :! hueadm group 5 scene=5kc-wrPDLYCNUZs transitiontime=0
    autocmd BufEnter,BufRead,BufNewFile *.{js,jsx,json,lock} silent! :! hueadm group 5 scene=AEZNHxZvlZB-x08 transitiontime=0
    autocmd BufEnter,BufRead,BufNewFile *.{ex,exs,heex,eex} silent! :! hueadm group 5 scene=GXibWzohPwlWmms transitiontime=0
    autocmd BufEnter,BufRead,BufNewFile *.{md,toml,yaml} silent! :! hueadm group 5 scene=N4Oun8zBxVIrVOf transitiontime=0
    autocmd BufEnter,BufRead,BufNewFile *.{rs} silent! :! hueadm group 5 scene=3bLYkkWM88P7myN transitiontime=0
    autocmd BufEnter,BufRead,BufNewFile *.{sh,zsh} silent! :! hueadm group 5 scene=rAaqEOJ3ZwmKVs4 transitiontime=0
  augroup END
]]

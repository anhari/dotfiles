-- vim.cmd [[
--   let g:dispatch_handlers = ['headless']
--
--   augroup hue
--     autocmd!
--     autocmd VimLeave * silent! :! hueadm group Studio scene=BiQOA6eIZzsMywf transitiontime=0 && hueadm group Office scene=BiQOA6eIZzsMywf transitiontime=0
--     autocmd BufEnter,BufRead,BufNewFile,WinEnter *.{rb,rbs,html} :Start! -compiler=noerror hueadm group Studio scene=h3cmO6sijEnTlRq transitiontime=0 && hueadm group Office scene=GPUx6GtS9HQr808 transitiontime=0
--     autocmd BufEnter,BufRead,BufNewFile,WinEnter *.{sql,ts,tsx,lua,css} :Start! -compiler=noerror hueadm group Studio scene=5kc-wrPDLYCNUZs transitiontime=0 && hueadm group Office scene=4iOICYIvzXbejaT transitiontime=0
--     autocmd BufEnter,BufRead,BufNewFile,WinEnter *.{js,jsx,json,lock} :Start! -compiler=noerror hueadm group Studio scene=AEZNHxZvlZB-x08 transitiontime=0 && hueadm group Office scene=LeAUNN2uzbUicFi transitiontime=0
--     autocmd BufEnter,BufRead,BufNewFile,WinEnter *.{ex,exs,heex,eex} :Start! -compiler=noerror hueadm group Studio scene=GXibWzohPwlWmms transitiontime=0 && hueadm group Office scene=scth2ZiTHXdfbXa transitiontime=0
--     autocmd BufEnter,BufRead,BufNewFile,WinEnter *.{md,toml,yaml} :Start! -compiler=noerror hueadm group Studio scene=N4Oun8zBxVIrVOf transitiontime=0 && hueadm group Office scene=b-M07-hcEDl72FL transitiontime=0
--     autocmd BufEnter,BufRead,BufNewFile,WinEnter *.{rs,svelte} :Start! -compiler=noerror hueadm group Studio scene=3bLYkkWM88P7myN transitiontime=0 && hueadm group Office scene=yXMuglgRlac8HAO transitiontime=0
--     autocmd BufEnter,BufRead,BufNewFile,WinEnter *.{sh,zsh,snippets} :Start! -compiler=noerror hueadm group Studio scene=rAaqEOJ3ZwmKVs4 transitiontime=0 && hueadm group Office scene=AEU2QqQihwTmNgd transitiontime=0
--   augroup END
-- ]]
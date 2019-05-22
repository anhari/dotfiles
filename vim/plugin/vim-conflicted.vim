" vim-conflicted
" Easy git merge conflict resolution in Vim
" https://github.com/christoomey/vim-conflicted

" Display the version name of each split in the vim statusbar
set stl+=%{ConflictedVersion()}

" Mark the file as resolved and open the next file in Merger mode for resolution
nnoremap <leader>gnc :GitNextConflict<cr>

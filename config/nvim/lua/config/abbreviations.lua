-- Abbreviations (:h iabbrev)
vim.cmd [[
  iabbrev asessment assessment
  iabbrev asessments assessments
  iabbrev assesment assessment
  iabbrev assesments assessments
  iabbrev colleciton collection
  iabbrev comepetncies competencies
  iabbrev comepetncy competency
  iabbrev competncies competencies
  iabbrev competncy competency
  iabbrev comptencies competencies
  iabbrev comptency competency
  iabbrev destory destroy
  iabbrev esle else
  iabbrev eslif elsif
  iabbrev locaiton location
  iabbrev locaition location
  iabbrev unkown unknown
  iabbrev verfication verification
  iabbrev procurment procurement
  iabbrev cricle circle
  iabbrev recieving receiving
  iabbrev trasnfer transfer

  augroup markdown
    autocmd!
    autocmd FileType markdown iabbrev <buffer> ... …
  augroup END

  augroup fountain
    autocmd!
    autocmd FileType fountain iabbrev <buffer> ... …
  augroup END
]]

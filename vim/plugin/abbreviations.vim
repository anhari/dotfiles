" Abbreviations (:h iabbrev)

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
iabbrev locaiton location
iabbrev locaition location
iabbrev unkown unknown

augroup markdown
  autocmd!
  autocmd FileType markdown iabbrev <buffer> ... …
augroup END

augroup fountain
  autocmd!
  autocmd FileType fountain iabbrev <buffer> ... …
augroup END

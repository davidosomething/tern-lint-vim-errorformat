let g:sample = 'index.js:84: error: Invalid argument at 1: cannot convert from string to number'
let g:pattern = '\([^:]\+:\)\([^:]\+\)\(.*\)'
"let g:replace = '\=submatch(2)'
let g:replace = '\=submatch(1) . byte2line(submatch(2)) . submatch(3)'
echom substitute(
       \   g:sample,
       \   g:pattern,
       \   g:replace,
       \   ''
       \ )

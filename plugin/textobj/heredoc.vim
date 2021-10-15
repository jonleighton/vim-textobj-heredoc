if exists('g:loaded_textobj_heredoc')
  finish
endif

call textobj#user#plugin('heredoc', {
\   '-': {
\     'select-a-function': 'textobj#heredoc#select_a',
\     'select-a': 'ah',
\     'select-i-function': 'textobj#heredoc#select_i',
\     'select-i': 'ih',
\   },
\ })

let g:loaded_textobj_comment = 1

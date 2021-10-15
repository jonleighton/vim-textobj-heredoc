function! textobj#heredoc#select_a()
  try
    return function('textobj#heredoc#' . &filetype . '#select_a')()
  catch
    return 0
  endtry
endfunction

function! textobj#heredoc#select_i()
  try
    return function('textobj#heredoc#' . &filetype . '#select_i')()
  catch
    return 0
  endtry
endfunction

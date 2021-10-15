function! textobj#heredoc#elixir#select_a()
  let cursor = getcurpos()
  let line = search('"""$', 'bcW')

  if line == 0
    call setpos('.', cursor)
    return 0
  endif

  let start_pos = getpos('.')

  normal! j0
  let line = search('"""$', 'We')

  if line == 0
    call setpos('.', cursor)
    return 0
  endif

  let end_pos = getpos('.')

  return ["v", start_pos, end_pos]
endfunction

function! textobj#heredoc#elixir#select_i()
  let pos = textobj#heredoc#select_a()

  if type(pos) == v:t_number && pos == 0
    return 0
  endif

  let start_pos = pos[1]
  let start_pos[1] = start_pos[1] + 1

  let end_pos = pos[2]
  let end_pos[1] = end_pos[1] - 1

  return ["V", start_pos, end_pos]
endfunction

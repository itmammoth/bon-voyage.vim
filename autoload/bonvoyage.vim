let s:FALSE = 0
let s:TRUE = !s:FALSE

function! bonvoyage#enter()
  if s:no_args() && s:is_buf_byte_zero()
    if s:boyage(g:bonvoyage_filename)
      return s:TRUE
    endif
    return s:boyage(expand('~/') . g:bonvoyage_filename)
  endif
  return s:FALSE
endfunction

function! bonvoyage#load(cargo)
  let cargo_file = findfile(s:vimfy(a:cargo), expand(g:bonvoyage_cargo_dir, ':h'))
  if cargo_file == ''
    call s:show_error('Not found the cargo "' . a:cargo . '"')
    return
  endif
  execute 'source' cargo_file
endfunction

function! s:no_args()
  return @% == ''
endfunction

function! s:is_buf_byte_zero()
  return line2byte(line('$') + 1) == -1
endfunction

function! s:boyage(bv_file)
  if filereadable(a:bv_file)
    execute 'source' a:bv_file
    return s:TRUE
  endif
  return s:FALSE
endfunction

function! s:vimfy(filename)
  if a:filename =~ '\.vim$'
    return a:filename
  endif
  return a:filename . '.vim'
endfunction

function! s:show_error(message)
  echohl ErrorMsg | echo '[bon-voyage] ' . a:message | echohl None
endfunction

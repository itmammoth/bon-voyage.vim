"
" g:bonvoyage_filename
"
" Set the filename to be sourced on starting vim.
" e.x.)
" let g:bonvoyage_filename = '.bv.vim'
"
if !exists('g:bonvoyage_filename')
  let g:bonvoyage_filename = '.bon-voyage.vim'
endif

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

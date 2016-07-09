"
" g:tablemaker_filename
"
" Set the filename to be sourced on starting vim.
" e.x.)
" let g:tablemaker_filename = '.tm.vim'
"
if !exists('g:tablemaker_filename')
  let g:tablemaker_filename = '.tablemaker.vim'
endif

let s:FALSE = 0
let s:TRUE = !s:FALSE

function! tablemaker#works()
  if s:no_args() && s:is_buf_byte_zero()
    if s:make_table(g:tablemaker_filename)
      return s:TRUE
    endif
    return s:make_table(expand('~/') . g:tablemaker_filename)
  endif
  return s:FALSE
endfunction

function! s:no_args()
  return @% == ''
endfunction

function! s:is_buf_byte_zero()
  return line2byte(line('$') + 1) == -1
endfunction

function! s:make_table(tm_file)
  if filereadable(a:tm_file)
    execute 'source' a:tm_file
    return s:TRUE
  endif
  return s:FALSE
endfunction

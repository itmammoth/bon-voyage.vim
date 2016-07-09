if exists("g:loaded_tablemaker")
  finish
endif
let g:loaded_tablemaker = 1

let s:save_cpo = &cpo
set cpo&vim


augroup tablemaker
  autocmd!
  autocmd VimEnter * nested call tablemaker#works()
augroup END


let &cpo = s:save_cpo
unlet s:save_cpo

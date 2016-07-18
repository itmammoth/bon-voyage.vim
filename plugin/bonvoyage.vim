if exists("g:loaded_bonvoyage")
  finish
endif
let g:loaded_bonvoyage = 1

let s:save_cpo = &cpo
set cpo&vim


augroup bonvoyage
  autocmd!
  autocmd VimEnter * nested call bonvoyage#enter()
augroup END


let &cpo = s:save_cpo
unlet s:save_cpo

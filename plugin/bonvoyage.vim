if exists("g:loaded_bonvoyage")
  finish
endif
let g:loaded_bonvoyage = 1

let s:save_cpo = &cpo
set cpo&vim


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

"
" g:bonvoyage_cargo_dir
"
" Set cargos directory.
" e.x.)
" let g:bonvoyage_cargo_dir = '~/.dotfiles/vim/bon-voyage/cargos'
"
if !exists('g:bonvoyage_cargo_dir')
  let g:bonvoyage_cargo_dir = '~/.bon-voyage/cargos'
endif

command! -nargs=1 BonVoyageLoad call bonvoyage#load(<args>)

augroup bonvoyage
  autocmd!
  autocmd VimEnter * nested call bonvoyage#enter()
augroup END


let &cpo = s:save_cpo
unlet s:save_cpo

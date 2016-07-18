if has('gui_running')
  set columns=999 lines=99
  getchar(1) " to wait for resizing window
endif
edit plugin/bonvoyage.vim
vsplit autoload/bonvoyage.vim
NERDTree
wincmd =

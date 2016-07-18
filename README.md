# bon-voyage.vim

bon-voyage.vim is a simple vim plugin that sets up your workspace on starting vim.

![Screenshot](https://raw.githubusercontent.com/itmammoth/bon-voyage.vim/master/images/bonvoyage.gif)

# Features

* Try to source `.bon-voyage.vim` in the current directory
  * And if it's not found, try to source `.bon-voyage.vim` in your $HOME directory
* Never run when vim is running with any arguments or reading stdin

# Installation

## vim-plug
Add this to your .vimrc file.

    Plug 'itmammoth/bon-voyage.vim'

Then, `:PlugInstall`

## dein.vim
Add this to your .vimrc file.

    call dein#add('itmammoth/bon-voyage.vim')

Then, `:call dein#install()`

## Vundle

    Plugin 'itmammoth/bon-voyage.vim'


... and many other plugin managers.

# Example

#### For rails project

Create `.bon-voyage.vim` in a rails root directory.

    " the_rails_root/.bon-voyage.vim
    if has('gui_running')
      set columns=190 lines=70
    endif
    edit spec/factories.rb
    vsplit db/schema.rb
    let NERDTreeIgnore = ['tmp[[dir]]', 'bundle[[dir]]']
    NERDTree
    wincmd =
    Rcd

Run vim in the directory without any arguments.

    $ cd the_rails_root
    $ gvim

#### For global

Create `.bon-voyage.vim` in your `$HOME` directory. (If `.bon-voyage.vim` is not found in the current directory, $HOME directory will be the search directory to find `bon-voyage.vim`)

    " ~/.bon-voyage.vim
    edit $MYVIMRC

Run vim without any arguments.

    $ cd any_directory
    $ gvim

# Configuration

#### g:bonvoyage_filename

Set the filename to be sourced on starting vim.
`default: ".bon-voyage.vim"`

    e.x.)
    let g:bonvoyage_filename = '.bv.vim'

# Contribution

Fork it, `blankslate.vimrc` is the essential vim script file for testing.

    $ vim -u blankslate.vimrc -U NONE

# License

MIT License.

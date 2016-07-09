# tablemaker.vim

tablemaker.vim is a simple vim plugin that sets up your workspace on starting vim.

![Screenshot](https://raw.githubusercontent.com/itmammoth/tablemaker.vim/master/images/tablemaker.gif)

# Features

* Try to source `.tablemaker.vim` in the current directory
  * And if it's not found, try to source `.tablemaker.vim` in your $HOME directory
* Never run when vim is running with any arguments or reading stdin

# Installation

## vim-plug
Add this to your .vimrc file.

    Plug 'itmammoth/tablemaker.vim'

Then, `:PlugInstall`

## dein.vim
Add this to your .vimrc file.

    call dein#add('itmammoth/tablemaker.vim')

Then, `:call dein#install()`

## Vundle

    Plugin 'itmammoth/tablemaker.vim'


... and many other plugin managers.

# Example

#### For rails project

Create `.tablemaker.vim` in a rails root directory.

    " the_rails_root/.tablemaker.vim
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

Create `.tablebaker.vim` in your `$HOME` directory. (If `.tablemaker.vim` is not found in the current directory, $HOME directory will be the search directory to find `tablemaker.vim`)

    " ~/.tablemaker.vim
    edit $MYVIMRC

Run vim without any arguments.

    $ cd any_directory
    $ gvim

# Configuration

#### g:tablemaker_filename

Set the filename to be sourced on starting vim.
`default: ".tablemaker.vim"`

    e.x.)
    let g:tablemaker_filename = '.tm.vim'

# Contribution

Fork it, `blankslate.vimrc` is the essential vim script file for testing.

    $ vim -u blankslate.vimrc -U NONE

# License

MIT License.

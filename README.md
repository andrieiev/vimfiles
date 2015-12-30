# Ruby/Rails centric neovim files

## Requirements

NeoVim
The Silver Searcher (http://geoff.greer.fm/ag/)
Ctags exuberant

Tested on MacOS (with Neovim.app)

## Quick Install

    curl https://raw.github.com/XsErG/vimfiles/master/bootstrap.sh -o - | sh

## Basic Mappings

The leader is mapped to `,`

### In Normal mode (`Esc` or `jj`)

`,p`     - File browser (NerdTree)

`,f`     - Find in Files (CtrlP)

`Space`  - Search in buffer

`,d`     - close buffer

`,Space` - Remove search highlighting

`,l`     - Show tags (Tagbar)

`//`     - Toggle comments (T-Comment)

`F5`     - Undo history (GUndo)

`,,`     - Toggle between last two buffers

`,m`     - Jump to model

`,v`     - Jump to view

`,gm`    - Find in app/models

`,gc`    - Find in app/controller

`,gv`    - Find in app/views

`,gr`    - Open routes in split

`,gg`    - Open Gemfile in split

### In Insert mode (`i`)

`jj` - Back to normal mode

See `~/.config/nvim/init.vim` for more.

## Plugins

### rails            

*Lots* of stuff - get to know this plugin!

`:Rmodel` - jump to model

`:Rview` - jump to view

`:help rails`

### coffee-script

CoffeeScript support

`:CoffeeCompile watch` show compiled js in split

https://github.com/kchmck/vim-coffee-script

### fugitive         

Git integration

*Lots* of stuff

`:Gstatus` and press `-` to stage file

http://vimcasts.org/episodes/fugitive-vim---a-complement-to-command-line-git/

`:help fugitive`

### rvm              

Add RVM integration

### gundo (`F5`)

Navigate changes history tree 

http://vimcasts.org/episodes/undo-branching-and-gundo-vim/

### tabular

Align stuff

http://vimcasts.org/episodes/aligning-text-with-tabular-vim/

### tcomment (`//`)

Comment/Uncomment stuff out


### nerdtree (`,p`)             

Project file browser

`,p` opens file browser

`o` / `x` open and close files/folders

`m` menu to move/delete/copy files/folders

`?` Help

I use nerdtree for creating or moving files, but find command-t quicker for
opening files.

### surround (`ys`/`cs`/`ds`)

Allows adding/removing/changing of surroundings

I would highly recommend getting to know this plugin, it is very useful.
Especially when you grok text objects.

*Characters*

`ysiw)`    - surround inner word with `()`

`ysiw(`    - surround inner word with `(  )`

In the above example `iw` can be replaced with any text object or motion.

If you find yourself manually adding surroundings, stop and work out the
correct text object or motion.

`cs"'`     - change surrounding from `"` to `'`

`ds`       - delete surrounding

*Tags*

`yss<p>`  - surround line in `<p>` tags

`cst<div>` - change surround tag to `<div>`

### syntastic

Syntax checking

When a file is saved the syntax is automatically checked and any errors
reported.

### vundle

Plugin manager and part of the reason why my vimfiles as so compact

## Helpful Stuff

- http://neovim.io
- http://github.com/krisleech/vimfiles/wiki
- http://walking-without-crutches.heroku.com/image/images/vi-vim-cheat-sheet.png
- http://yehudakatz.com/2010/07/29/everyone-who-tried-to-convince-me-to-use-vim-was-wrong/
- http://stackoverflow.com/questions/1218390/what-is-your-most-productive-shortcut-with-vim/1220118#1220118
- http://stevelosh.com/blog/2010/09/coming-home-to-vim/#important-vimrc-lines
- `:help key-notation`
- http://vimcasts.org/
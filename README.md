# NeoVim configuration files

## Requirements

NeoVim
The Silver Searcher (http://geoff.greer.fm/ag/)
Universal Ctags

## Quick Install

    curl https://raw.github.com/andrieiev/vimfiles/master/bootstrap.sh -o - | sh

## Basic Mappings

The leader is mapped to `,`

### In Normal mode (`Esc` or `jj`)

`,p`     - File browser (NerdTree)

`,f`     - Find in Files (CtrlP)

`Space`  - Search in buffer

`,d`     - close buffer

`,Space` - Remove search highlighting

`,l`     - Show tags (Tagbar)

`//`     - Toggle comments (NERDCommenter)

`F5`     - Undo history (UndoTree)

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

### CtrlP

`<c-j>`,`<c-k>` - navigate in the list
`F5` - purge cache
`<c-f>`, `<c-b>` - switch between modes (files, buffers, most recently used)
`<c-d>` - switch to filename search instead of full path.
`<c-r>` - regexp mode

`<c-t>` - open file in new tab
`<c-v>`, `<c-x>` - open file in split (vertical, horisontal)

`<c-z>` - select files in list and `<c-o>` to open them in vertical splits


### rails            

*Lots* of stuff - get to know this plugin!

`:Emodel` - jump to model

`:Eview` - jump to view

`:help rails`

### fugitive         

Git integration

*Lots* of stuff

`:Gstatus` and press `-` to stage file

http://vimcasts.org/episodes/fugitive-vim---a-complement-to-command-line-git/

`:help fugitive`

### rvm              

Add RVM integration

### UndoTree(`F5`)

Navigate changes history tree 

### tabular

Align stuff

http://vimcasts.org/episodes/aligning-text-with-tabular-vim/

### NERDCommenter (`//`)

Comment/Uncomment stuff out

### nerdtree (`,p`)             

Project file browser

`,p` opens file browser

`o` / `x` open and close files/folders

`m` menu to move/delete/copy files/folders

`?` Help

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

## Helpful Stuff

- http://neovim.io
- `:help key-notation`
- http://vimcasts.org/

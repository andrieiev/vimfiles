set nocompatible               " be iMproved

if !isdirectory(expand("~/.vim/bundle/vundle/.git"))
  !git clone git://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
endif

filetype off                   " must be off before Vundle has run

set runtimepath+=~/.vim/bundle/vundle/

call vundle#rc()

Bundle 'gmarik/vundle'
Bundle "mileszs/ack.vim.git"
Bundle "tpope/vim-rvm.git"
Bundle "tpope/vim-fugitive"
Bundle "tpope/vim-rails.git"
Bundle "tpope/vim-surround.git"
Bundle "chrismetcalf/vim-yankring.git"
Bundle "chrismetcalf/vim-taglist.git"
Bundle "tpope/vim-endwise.git"
Bundle "scrooloose/syntastic.git"
Bundle "Townk/vim-autoclose.git"
Bundle "scrooloose/nerdtree.git"
Bundle "panozzaj/vim-autocorrect.git"
Bundle "tomtom/tcomment_vim.git"
Bundle "sjl/gundo.vim.git"
Bundle "clones/vim-fuzzyfinder.git"
Bundle "godlygeek/tabular.git"
Bundle "vim-scripts/Gist.vim.git"
Bundle "vim-scripts/L9.git"
Bundle "Bogdanp/rbrepl.vim.git"
Bundle 'git://git.wincent.com/command-t.git'
Bundle "gmarik/snipmate.vim.git"
Bundle "krisleech/snipmate-snippets.git"
Bundle 'altercation/vim-colors-solarized.git'
Bundle "kana/vim-textobj-user.git"
Bundle "nelstrom/vim-textobj-rubyblock.git"
Bundle "ervandew/supertab.git"
Bundle "jQuery"
Bundle "kchmck/vim-coffee-script.git"
Bundle "pangloss/vim-javascript.git"
Bundle "cakebaker/scss-syntax.vim.git"
Bundle "tpope/vim-haml.git"
Bundle "tpope/vim-markdown.git"
Bundle "greyblake/vim-preview.git"
Bundle "tpope/vim-bundler.git"
" my
Bundle "Lokaltog/vim-powerline"
Bundle 'sjl/badwolf'
Bundle 'tomasr/molokai'
Bundle 'othree/yajs.vim'
Bundle 'digitaltoad/vim-jade'

filetype plugin indent on     " and turn it back on!

runtime macros/matchit.vim    

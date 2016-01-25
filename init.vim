"NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=$HOME/.config/nvim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.config/nvim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'mhartington/oceanic-next'
NeoBundle 'jscappini/material.vim' " theme
NeoBundle 'flazz/vim-colorschemes' "themes pack
NeoBundle 'bling/vim-airline' " status line
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'Valloric/MatchTagAlways'

" NeoBundle 'Shougo/neosnippet.vim'
" NeoBundle 'Shougo/neosnippet-snippets'
" VCS
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'airblade/vim-gitgutter'

NeoBundle 'ctrlpvim/ctrlp.vim' " find file by mask 
NeoBundle 'majutsushi/tagbar'

NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Xuyuanp/nerdtree-git-plugin'

NeoBundle 'tpope/vim-surround'
NeoBundle 'godlygeek/tabular'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'sjl/gundo.vim'

" Complete
NeoBundle 'Shougo/deoplete.nvim'
NeoBundle 'Shougo/neco-vim'        "  search in source for deoplete
NeoBundle 'Shougo/neoinclude.vim'  " search in included files for deoplete
NeoBundle 'Shougo/neco-syntax'     " search in syntax for deoplete


NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-rvm'
NeoBundle 'ngmy/vim-rubocop'
NeoBundle 'tpope/vim-endwise'      " autocomplete ruby blocks

NeoBundle 'othree/yajs.vim'
NeoBundle 'digitaltoad/vim-jade'
NeoBundle "kchmck/vim-coffee-script.git"
NeoBundle "pangloss/vim-javascript.git"
NeoBundle "cakebaker/scss-syntax.vim.git"
NeoBundle "tpope/vim-haml.git"
NeoBundle "tpope/vim-markdown.git"

NeoBundle 'scrooloose/syntastic' " syntax check

NeoBundle 'gorodinskiy/vim-coloresque' " highlight css color


" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

" let $NVIM_TUI_ENABLE_TRUE_COLOR = 1



filetype plugin indent on    

set modelines=0
set history=1000
set autoread " reload files after change outside vim
set hidden   " allow work with many buffers without saving current buffer before change

" Undo history
set undofile
set undodir=~/.vim/.tmp,~/tmp,~/.tmp,/tmp

set backupdir=~/tmp,/tmp
" disable vim backup/swap function
set nobackup
set nowritebackup
set noswapfile

" Ignore some binary, versioning and backup files when auto-completing
set wildignore=.svn,CVS,.git,*.swp,*.bak

" Make Vim use RVM correctly when using Zsh
" https://rvm.beginrescueend.com/integration/vim/
set shell=/bin/zsh

" ---
" UI
" ---
set title
set encoding=utf-8
set scrolloff=5 " keep cursor always with 5 lines below/above
set number " show lines number
" set relativenumber " show relative lines number
set splitbelow splitright " where new split must be created

set colorcolumn=110 " show vertical line on 110 symbol

set showmode " show mode in status
set showcmd " show last cmd

" autocomplete menu for vim commands
set wildmenu
set wildmode=list:longest

set visualbell " blink screen instead of beep on error

set cursorline " highlight line with cursor


" ---
" syntax and color
" ---
syntax enable

colorscheme OceanicNext

set background=dark

let g:airline_theme='oceanicnext'
let g:airline_powerline_fonts=1

" indent configuration
set autoindent
set smartindent

" tab configuration
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab " replace tabs to spaces
set smarttab  " only even number of spaces

set nowrap
" set textwidth=79 " width for wrap
"set formatoptions=n

" show spaces and tabs
set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅

set ignorecase " ignore case in search
set smartcase " enable case sensetive search if pattern contain an uppercase letter
set incsearch " find pattern while typing
set showmatch " highlight pair braces
set hlsearch " hightlight search results

" Auto adjust window sizes when they become current
set winwidth=84
set winheight=5
set winminheight=5
set winheight=999


if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

let g:deoplete#enable_at_startup = 1

let g:cssColorVimDoNotMessMyUpdatetime = 1 " css-color plugin configuration

let g:ctrlp_custom_ignore='node_modules\|bower_components\|doc\|coverage\|tmp\|log)'

let g:vimrubocop_config = '~/.config/nvim/rubocop.yml'

" Settings for syntastic (from readme)
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" NERDTree
let NERDTreeShowBookmarks = 0
let NERDChristmasTree = 1
let NERDTreeWinPos = "left"
let NERDTreeHijackNetrw = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeWinSize = 50 
let NERDTreeChDirMode = 2
let NERDTreeDirArrows = 1

" ---
" mappings
" ---
let mapleader = ","
let g:mapleader = ","

let g:ctrlp_map = '<leader>f'

" open file browser
map <leader>p :NERDTreeToggle<cr>
" set cursor in file browser on current file
map <c-f> :NERDTreeFind<cr>

" Move between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" close buffer
nmap <leader>d :bd<CR>

" navigate through autocomplete menu (Deoplete)
inoremap <C-k> <C-Up>
inoremap <C-j> <C-Down>


" Auto format
map === mmgg=G`m^zz

" Easy commenting
nnoremap // :TComment<CR>
vnoremap // :TComment<CR>

" search with regex"
nnoremap / /\v
vnoremap / /\v

" search (forwards)
nmap <space> /
" search (backwards)
map <c-space> ?

" center screen when scrolling search results
nmap n nzz
nmap N Nzz

" hide search highlights
nnoremap <leader><space> :noh<cr>

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

imap jj <ESC> " ESC too far for me

nnoremap <leader><leader> <c-^> " jump between two last buffers

" hack for navigate by line when wrap enabled
nnoremap j gj
nnoremap k gk

nnoremap <F5> :GundoToggle<CR> " show gundo window

" ---
" Ruby/Rails
" ---

" Map CtrlP to find in rails folders
map <leader>gv :CtrlP app/views<cr>
map <leader>gc :CtrlP app/controllers<cr>
map <leader>gm :CtrlP app/models<cr>
map <leader>gh :CtrlP app/helpers<cr>
map <leader>gl :CtrlP lib<cr>
map <leader>gp :CtrlP public<cr>
map <leader>gs :CtrlP public/stylesheets<cr>
map <leader>ga :CtrlP app/assets<cr>

" View routes or Gemfile in large split
map <leader>gr :topleft :split config/routes.rb<cr>
map <leader>gg :topleft 100 :split Gemfile<cr>

" Skip to Model, View or Controller
map <Leader>m :Rmodel 
map <Leader>v :Rview 
map <Leader>c :Rcontroller 

" Other files to consider Ruby
au BufRead,BufNewFile Gemfile,Rakefile,Thorfile,config.ru,Vagrantfile,Guardfile,Capfile set ft=ruby


"  ---------------------------------------------------------------------------
"  CoffeeScript
"  ---------------------------------------------------------------------------

let coffee_compile_vert = 1
au BufNewFile,BufReadPost *.coffee setl foldmethod=manual
au BufNewFile,BufRead *.es6 set filetype=javascript
" au BufNewFile,BufRead *.jade set filetype=jade


"  ---------------------------------------------------------------------------
"  SASS / SCSS
"  ---------------------------------------------------------------------------

au BufNewFile,BufReadPost *.scss setl foldmethod=manual
au BufNewFile,BufReadPost *.sass setl foldmethod=manual
au BufRead,BufNewFile *.scss set filetype=scss



" TagList
set tags=./tags;
" Support for https://github.com/ivalkeen/guard-ctags-bundler
set tags+=gems.tags
map <leader>l :TagbarToggle<cr>
" Generate ctags for all bundled gems as well
map <leader>rt :!ctags --extra=+f --languages=-javascript --exclude=.git --exclude=log -R * `rvm gemdir`/gems/* `rvm gemdir`/bundler/gems/*<CR><C-M>
au BufWritePost *.rb,*.js,*.coffee,*.go,*.es6 silent! !ctags -R & " rescan file after save
" Use only current file to autocomplete from tags
" set complete=.,t
set complete=.,w,b,u,t,i

" Tabularize
nmap <leader>a\| :Tab /\|<CR>
vmap <leader>a\| :Tab /\|<CR>
nmap <leader>a= :Tab /=<CR>
vmap <leader>a= :Tab /=<CR>
nmap <leader>a: :Tab /:\zs<CR>
vmap <leader>a: :Tab /:\zs<CR>



" do hurts newbies
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>"
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

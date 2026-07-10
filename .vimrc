set mouse=

set viewoptions=	"forbidden autoload view
"set term=xterm-256color
set foldenable
set nocompatible	" be iMproved, required
set number		" show line
set hidden		" allow buffer switching when there are unsaved modifications
set cursorline
set term=screen
set noexpandtab		"do not expand tab to space
"set term=ansi
set tabstop=8
set shiftwidth=8
set softtabstop=8
set autoindent
set confirm		" Confirmation pops up when processing unsaved or read-only files
set helplang=cn
set nohlsearch
set pastetoggle=<F2>
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'"
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
Plugin 'scrooloose/nerdtree'
Plugin 'luochen1990/rainbow'
Plugin 'Yggdroot/indentLine'
Plugin 'joshdick/onedark.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'yianwillis/vimcdoc'
Plugin 'preservim/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'powerline/powerline-fonts'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"NERDTree config
"F1 open; q quit
map <F1> : NERDTree<cr>
"delete buffer and toggle
nnoremap <C-x> :bdelete \| bnext<cr>
let g:NERDTreeWinSize = 30
let NERDTreeShowHidden = 1

"rainbow config
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

"onedark config
syntax on
colorscheme onedark

"indentLine config
set list lcs=tab:\|\-
let g:indentLine_setColors = 0
let g:indentLine_enabled = 1 
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

"vim-airline config
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_left_sep = ''                                                                                                                                 
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = 'C:'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' L:'
let g:airline_symbols.maxlinenr = '☰ '
let g:airline_symbols.dirty='⚡'

"vim-airline-themes config
let g:airline_theme = 'onedark'

"tagbar config
nmap <F8> :TagbarToggle<CR>
let g:tagbar_width = 40

"tab toggle window
nmap <Tab> :bn<CR>
nmap <C-k> <C-w>k
nmap <C-j> <C-w>j
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l
"exit the current split screen
nmap <C-z> <C-w>q
"horizontal screen width adjustment
nmap <C-a> <C-w>>
nmap <C-q> <C-w><

" CTRLP config
let g:ctrlp_map = '<C-p>'
let g:ctrlp_by_filename = 1	" Set default to use filename matching mode
let g:indentLine_conceallevel = 0

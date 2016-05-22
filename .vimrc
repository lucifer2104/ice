" File: _vimrc
" Author: Jia Wang

set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'


Plugin 'vim-scripts/indentpython.vim'
Plugin 'jnurmine/Zenburn'
Plugin 'valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()

"Turn on the verboseness to see everything vim is doing
"set verbose=9

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Bash-style tab completion
set wildmode=longest,list
set wildmenu


" Replace Tab with 4 spaces
set shiftwidth=2
set tabstop=8
set expandtab   
set textwidth=79
"
" show tab characters
set list
set listchars=tab:>.
hi SpecialKey ctermfg=red guifg=gray

" auto indent
set autoindent
filetype plugin indent on

" toggle paste mode
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

" show vim mode .e.g --insert--
set showmode

" show line number
"set number

" space for commands
"set cmdheight=2

"set selectmode=mouse
"set mouse=a

"backup
set nobackup
set nowritebackup

set nowrap


" ruler setting and status line
set ruler
set rulerformat=%-14.(%l,%c%V%)\ %P
set statusline=[%02n]\ %f\ %(\[%M%R%H]%)%=\ %4l,%02c%2V\ %P%*
set laststatus=2

" smart search
set scs
" set ignorecase on
set ignorecase

" do incremental searches
set incsearch

syntax on 

" turn on the spell check for .txt file
if version >= 700 && expand('%:e') ==? 'txt'
        setlocal spell spelllang=en_us
endif

" change the highlight setting
hi clear SpellBad
hi SpellBad cterm=none ctermbg=red ctermfg=black
hi comment ctermfg=green
hi Search guibg=lineblue
hi Search cterm=NONE ctermfg=black ctermbg=Yellow
set hlsearch

" indentation setting
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" flag the bad white spaces
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"auto-complete
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"set t_Co=256 
colorscheme zenburn
"export TERM=xterm-256

set nocompatible    " make Vim behave in the more useful way

" Leader shortcuts
let mapleader=","   " leader is comma

"
" Vim Plugin management
"
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
call plug#end()

"
" Colors
"
colorscheme elflord
syntax on

" dim line numbers
highlight CursorLineNr ctermfg=DarkGrey
highlight LineNr ctermfg=DarkGrey

"
" Spaces and tabs
"
set expandtab       " use the appropriate number of spaces to insert a <Tab>
set shiftwidth=4    " number of spaces to use for each step of (auto)indent
                    " (this command affects << and >>)
set softtabstop=4   " number of spaces that a <Tab> counts for while performing
                    " editing operations, like inserting a <Tab> or using <BS>
set tabstop=4       " number of spaces that a <Tab> in the file counts for
                    " (This command affects how existing text displays)

"
" UI config
"
set laststatus=2    " always show status line
set lazyredraw      " redraw only when necessary
set number          " show line number
set relativenumber  " show relative line numbers
set ruler           " show cursor position
set showcmd         " show command in the last line
set wildmenu        " visual autocomplete for command menu

"
" Search
"
set hlsearch        " highlight matches
set ignorecase      " ignore case in search patterns
set incsearch       " search as characters are entered
set smartcase       " override 'ignorecase' if the search pattern contains
                    " upper case characters

" turn off search highlight
nnoremap <leader><space> :set invhlsearch<CR>

"
" Movement
"
set backspace=indent    " allow backspacing over autoindent
set backspace+=eol      " allow backspacing over line breaks
set backspace+=start    " allow backspacing over the start of insert

" move vertically by visual line (don't skip wrapped lines)
nnoremap j gj
nnoremap k gk

" easy movement between splits
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"
" Encoding
"
set encoding=utf-8      " encoding used inside Vim
set fileencoding=utf-8  " encoding for the file of this buffer
set fileencodings=utf-8 " encodings considered when starting to edit an existing
                        " file
set termencoding=utf-8  " encoding used for the terminal, specifying what
                        " character encoding the keyboard produces and the
                        " display will understand.

"
" Misc
"
set history=50      " # entries for command and search history
set splitbelow      " put new window below current one
set splitright      " put new window on the right
set autochdir       " auto change working dir
set viminfo='100    " maximum number of previously edited files for which
                    " the marks are remembered
set mouse=a         " enable mouse

" use left/right keys to switch among buffers
map <right> :bn<CR>
map <left> :bp<CR>

" jump to the last position when reopening a file
autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g'\"" |
  \ endif

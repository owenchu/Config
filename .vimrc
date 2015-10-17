set nocompatible    " make Vim behave in the more useful way

" START VUNDLE SETTINGS (KEEP THESE VUNDLE SETTINGS AT TOP)
filetype off                " disable file type detection temporarily
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'sjl/badwolf'
Plugin 'sjl/gundo.vim'
call vundle#end()
filetype plugin indent on   " enable loading plugin and indent files for
                            " specific file types
" END VUNDLE SETTINGS

"
" Leader shortcuts
"
let mapleader=","   " leader is comma
" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

"
" Colors
"
colorscheme badwolf
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
set cursorline      " highlight cursor line
set laststatus=2    " always show status line
set lazyredraw      " redraw only when necessary
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
nnoremap <leader><space> :nohlsearch<CR>

"
" Movement
"
set backspace=indent    " allow backspacing over autoindent
set backspace+=eol      " allow backspacing over line breaks
set backspace+=start    " allow backspacing over the start of insert

" move vertically by visual line
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

" use left/right keys to switch among buffers
map <right> :bn<CR>
map <left> :bp<CR>

" jump to the last position when reopening a file
autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g'\"" |
  \ endif

syntax on
colorscheme evening

set nocompatible     " Make Vim behave in a more useful way
set fileformat=unix  "<EOL> = <NL>
set nobackup
set cmdheight=1
set laststatus=2     " Always show status line
set ruler
set history=50
set ignorecase
set smartcase
set incsearch
set hlsearch
set backspace=indent  " Indent allow backspacing over autoindent
set backspace+=eol    " Allow backspacing over line breaks (join lines)
set backspace+=start  " Start allow backspacing over the start of insert
set viminfo='20  " Maximum number of previously edited files for which
                 " the marks are remembered
set viminfo+=<50 " Maximum number of lines saved for each register

filetype plugin indent on

highlight Comment ctermfg=red

"autocmd BufWinLeave * silent! mkview
"autocmd BufWinEnter * silent! loadview

" Indent and tabs
set autoindent   " Copy indent from current line when starting a new line
set tabstop=4    " Number of spaces that a <Tab> in the file counts for
                 " (This command affects how existing text displays)
set shiftwidth=4 " Number of spaces to use for each step of (auto)indent
                 " (This command affects << and >>)
set expandtab    " In Insert mode, use the appropriate number of spaces to
                 " insert a <Tab>.
set softtabstop=4  " Number of spaces that a <Tab> counts for while performing
                   " editing operations, like inserting a <Tab> or using <BS>
set smarttab     " A <BS> will delete a 'shiftwidth' worth of space at
                 " the start of the line

" Encoding
set encoding=utf-8  " Set the encoding used inside Vim
set fileencoding=utf-8  " Set the encoding for the file of this buffer
set fileencodings=utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1
set termencoding=utf-8  " Encoding used for the terminal. This specifies what
                        " character encoding the keyboard produces and the
                        " display will understand.

" Jump to the last position when reopening a file
autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g'\"" |
  \ endif

" Key mappings
map <right> :bn<CR>
map <left> :bp<CR>
autocmd BufRead,BufNewFile *.sh map <F10> :% w !bash<CR>
autocmd BufRead,BufNewFile *.py map <F10> :% w !python<CR>
autocmd BufRead,BufNewFile *.rb map <F10> :% w !ruby<CR>
map <F11> :NERDTreeToggle<CR>
"map <F12> :TlistToggle<CR>

" pathogen
call pathogen#infect()

" Enable the ":Man" command
"runtime ftplugin/man.vim

syntax on
colorscheme evening

set nocompatible     " Make Vim behave in a more useful way
set fileformat=unix  "<EOL> = <NL>
set nobackup
set cmdheight=1
set laststatus=2     " Always show status line
set ruler
set history=50
set noignorecase
set incsearch hlsearch

set backspace=indent  " Indent allow backspacing over autoindent
set backspace+=eol    " Allow backspacing over line breaks (join lines)
set backspace+=start  " Start allow backspacing over the start of insert

set viminfo='20  " Maximum number of previously edited files for which
                 " the marks are remembered
set viminfo+=<50 " Maximum number of lines saved for each register

au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview

" Open file under cursor
":map <F12> :vertical wincmd f<CR>

" Settings for taglist
map <F12> :TlistToggle<CR>

map <F11> :vsp .<CR>

highlight Comment ctermfg=red

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal g'\"" |
  \ endif

"
" Indent-related settings
"
set autoindent   " Copy indent from current line when starting a new line
set tabstop=4    " Number of spaces that a <Tab> in the file counts for
set shiftwidth=4 " Number of spaces to use for each step of (auto)indent
set expandtab    " In Insert mode: Use the appropriate number of spaces to
                 " insert a <Tab>.
set smarttab     " A <BS> will delete a 'shiftwidth' worth of space at
                 " the start of the line
set softtabstop=4  " Number of spaces that a <Tab> counts for while performing
                   " editing operations, like inserting a <Tab> or using <BS>

"
" Encoding-related settings
"
set encoding=utf-8  " Set the encoding used inside Vim
set fileencoding=utf-8  " Set the encoding for the file of this buffer
set fileencodings=utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1
set termencoding=utf-8  " Encoding used for the terminal. This specifies what
                        " character encoding the keyboard produces and the
                        " display will understand.

"
" Python-specific settings
"
" After typing lines which start with any of the keywords in the list,
" the next line will automatically indent itself.
autocmd BufRead,BufNewFile *.py
  \ set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

autocmd BufRead,BufNewFile *.py map <F10> :w !python<CR>

" Enable the ":Man" command
runtime ftplugin/man.vim

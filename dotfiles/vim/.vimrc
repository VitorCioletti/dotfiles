" set line numbers set nu
set nu

" current line highlight
set cursorline

" limit line at 120
set cc=121

" tab to 4 spaces
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab smartindent

" new lines inherit indentation of previous ones.
set autoindent

" syntax highlight
syntax on

" enable mouse scrolling
set mouse=a

" set window's title to current file being edited
set title

" highlight search results
set hlsearch

" clear highlight results using SPACE key
nnoremap <space> :noh<return><space>

" visible lines above/below cursor
set scrolloff=5

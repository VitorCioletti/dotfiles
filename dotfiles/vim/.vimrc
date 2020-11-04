" set line numbers
set nu

" current line highlight
set cursorline

" limit line at 120
set cc=121

" tab to 4 spaces
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

" syntax highlight
syntax on

" enable mouse scroll up
map <ScrollWheelUp> <c-y>

" enable mouse scroll down
map <ScrollWheelDown> <c-e>

" highlight search results
set hlsearch

" clean search highlights
nnoremap <c-l> :nohlsearch<CR><C-L>

" visible lines above/below cursor
set scrolloff=5

" disable word wrap
:set wrap!

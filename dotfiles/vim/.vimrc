""set line numbers set nu
set nu

"" https://superuser.com/questions/1284561/why-is-vim-starting-in-replace-mode
set t_u7=

"" current line highlight
set cursorline

"" limit line at 120
set cc=121

"" tab to 4 spaces
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab smartindent

"" new lines inherit indentation of previous ones.
set autoindent

"" syntax highlight
syntax on

"" enable mouse scrolling
set mouse=a

"" set window's title to current file being edited
set title

"" highlight search results
set hlsearch

"" clear highlight results using SPACE key
nnoremap <return> :noh<CR>

"" visible lines above/below cursor
set scrolloff=5

let mapleader = "\<SPACE>"

"call plug#begin()
    "Plug 'preservim/nerdtree'
    "Plug 'preservim/nerdcommenter'
    "Plug 'OmniSharp/omnisharp-vim'
    "Plug 'dense-analysis/ale'
    "Plug 'editorconfig/editorconfig-vim'
    "Plug 'junegunn/fzf'
    "Plug 'junegunn/fzf.vim'
    ""Plug 'neoclide/coc.nvim', {'branch': 'release'}
"call plug#end()

"let g:fzf_vim = {}
"let g:fzf_vim.preview_window = []

"let g:ale_linters = { 'cs': ['omnisharp'] }

"" https://github.com/OmniSharp/omnisharp-vim/issues/859
"let g:OmniSharp_server_use_net6 = 1

"autocmd FileType cs nmap <silent> <buffer> gd <Plug>(omnisharp_go_to_definition)
"autocmd FileType cs nmap <silent> <buffer> <leader>d <Plug>(omnisharp_documentation)
"autocmd FileType cs nmap <silent> <buffer> <leader>o <Plug>(omnisharp_fix_usings)
"autocmd FileType cs nmap <silent> <buffer> <leader>r <Plug>(omnisharp_rename)
"autocmd FileType cs nmap <silent> <buffer> <leader>f <Plug>(omnisharp_code_format)
"autocmd FileType cs nmap <silent> <buffer> <leader>. <Plug>(omnisharp_code_actions)
"autocmd FileType cs xmap <silent> <buffer> <leader>. <Plug>(omnisharp_code_actions)
"autocmd FileType cs nmap <silent> <buffer> [[ <Plug>(omnisharp_navigate_up)
"autocmd FileType cs nmap <silent> <buffer> ]] <Plug>(omnisharp_navigate_down)
"autocmd FileType cs nmap <silent> <buffer> ]] <Plug>(omnisharp_navigate_down)

"nnoremap <leader>e :NERDTreeFind<CR>
"nnoremap <leader>s :Files<CR>


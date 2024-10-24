" Map leader to SPACE
let g:mapleader=" "

set nocompatible

" Indentation
set tabstop=4
set shiftwidth=4
set expandtab

" Line numbers
set number

" Vertical equivalent of C-w-n and C-w-N"
nnoremap <C-w>v :vnew<CR>
nnoremap <C-w>V :let spr=&spr<BAR>set nospr<BAR>vnew<BAR>let &spr=spr<CR>
nnoremap <C-W>N :let sb=&sb<BAR>set sb<BAR>new<BAR>let &sb=sb<CR>

" Nice shortcuts to change buffers
nnoremap <leader>b :ls<CR>:b<space>
nnoremap <leader>sb :ls<CR>:sb<space>
" Open edit menu, based on location of current file
nnoremap <leader>e :e %:h<C-L>

" Exit terminal insert mode with Esc
tnoremap <Esc> <C-\><C-n>

" Plugins
call plug#begin()
Plug 'junegunn/seoul256.vim'
Plug 'vhda/verilog_systemverilog.vim'
call plug#end()

let g:SuperTabDefaultCompletionType = 'context'
silent! colorscheme seoul256

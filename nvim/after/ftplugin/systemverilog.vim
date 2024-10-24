" Vim filetype plugin file
" Language:    SystemVerilog
" Maintainer:  kocha <kocha.lsifrontend@gmail.com>
" Last Change: 12-Aug-2013. 

if exists("b:did_ftplugin")
  finish
endif

let maplocalleader=","

nnoremap <localleader>i :VerilogFollowInstance<CR>
nnoremap <localleader>I :VerilogFollowPort<CR>
nnoremap <localleader>u :VerilogGotoInstanceStart<CR>
nnoremap <localleader>m :make<CR>
nnoremap <localleader>cn :cnext<CR>
nnoremap <localleader>cp :cprevious<CR>

setlocal makeprg=iverilog\ -g2005-sv\ %

" Behaves just like Verilog
runtime! ftplugin/verilog.vim

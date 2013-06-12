set nocompatible" 不兼容模式
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1 "亂碼問題
" set hls"高亮
syntax on"關鍵字高亮
set encoding=utf-8
filetype plugin indent on
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set number 
set sm "括號配對情況
set selection=inclusive
set wildmenu

filetype plugin indent on
set completeopt=longest,menu

if (has("gui_running"))
    set nowrap 
    set guioptions-=b
    set guioptions-=r
    colo torte
    set guioptions-=T
    set guioptions-=m
else
    set wrap
"    colo ron
endif

runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

map <F12> :call DoCtags()<CR>

function DoCtags()
    silent! execute "!ctags -R --c++-kinds=+p --fields=+iaIS --extra=+q ."
    silent! execute "!cscope -b"
endfunction

"ConqueTerm
let g:ConqueTerm_CWInsert = 1
let g:ConqueTerm_InsertOnEnter = 1

" NERDTree
map <F3> :NERDTreeToggle<CR>


" clang_complete
let g:clang_auto_select = 1

" Tagbar
nnoremap <silent> <F9> :TagbarToggle<CR>

" Syntax file for jQuery
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery


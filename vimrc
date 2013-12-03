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
set laststatus=2
syntax on

filetype plugin indent on
set completeopt=longest,menu
autocmd FileType python set omnifunc=pythoncomplete#Complete  
autocmd FileType ruby set shiftwidth=2

if (has("gui_running"))
    set nowrap 
    set guioptions-=b
    set guioptions-=r
    set guioptions-=L
    colo torte
    set guioptions-=T
    set guioptions-=m
else
    set wrap
"    colo ron
    colo torte
endif

"set guifont=Anonymous\ Pro:h13:cANSI


map <F12> :call DoCtags()<CR>

function DoCtags()
    silent! execute "!ctags -R --c++-kinds=+p --fields=+iaIS --extra=+q ."
    silent! execute "!cscope -b"
endfunction


" pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

"ConqueTerm
let g:ConqueTerm_CWInsert = 1
let g:ConqueTerm_InsertOnEnter = 1

" NERDTree
map <F3> :NERDTreeToggle<CR>


" clang_complete
let g:clang_auto_select = 1
let g:clang_library_path = '/usr/lib/llvm-3.2/lib/'

" Tagbar
nnoremap <silent> <F4> :TagbarToggle<CR>

" Syntax file for jQuery
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

" python-mode
let g:pymode_folding = 0
let g:pymode_lint_write = 0

" vim-airline
"let g:airline#extensions#tabline#enabled = 1

" lookupfile
let g:LookupFile_MinPatLength = 2               "最少输入2个字符才开始查找
let g:LookupFile_PreserveLastPattern = 0        "不保存上次查找的字符串
let g:LookupFile_PreservePatternHistory = 1     "保存查找历史
let g:LookupFile_AlwaysAcceptFirst = 1          "回车打开第一个匹配项目
let g:LookupFile_AllowNewFiles = 0              "不允许创建不存在的文件
if filereadable("./filenametags")                "设置tag文件的名字
    let g:LookupFile_TagExpr = '"./filenametags"'
endif
"映射LookupFile为,lk
"nmap <silent> <leader>lk :LUTags<cr>
"映射LUBufs为,ll
"nmap <silent> <leader>ll :LUBufs<cr>
"映射LUWalk为,lw
"nmap <silent> <leader>lw :LUWalk<cr>

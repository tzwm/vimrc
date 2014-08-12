set nocompatible" 不兼容模式 set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1 "亂碼問題
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
autocmd FileType ruby,eruby,html,javascript set shiftwidth=2
autocmd FileType ruby,eruby,html,javascript set tabstop=2
autocmd FileType ruby,eruby,html,javascript set softtabstop=2
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

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
"let g:clang_auto_select = 1
"let g:clang_library_path = '/usr/lib/llvm-3.2/lib/'

" Tagbar
nnoremap <silent> <F4> :TagbarToggle<CR>

" Syntax file for jQuery
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

" python-mode
let g:pymode_folding = 0
let g:pymode_lint_write = 0
let g:pymode_rope = 0

" vim-airline
"let g:airline#extensions#tabline#enabled = 1

" jslint.vim
let g:JSLintHighlightErrorLine = 0

" syntastic
call pathogen#infect()

" vim-indent-guides  <Leader>ig
set background=dark
let g:indent_guides_auto_colors = 1
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

" vim-easymotion <Leader><Leader>w

" vim-expand-region +/-

" ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_regexp = 1

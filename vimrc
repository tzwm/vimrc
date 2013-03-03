set nocp " 不兼容模式
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1 "亂碼問題
set hls"高亮
syntax on "關鍵字高亮
set encoding=utf-8
filetype plugin indent on
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

set sm "括號配對情況


if (has("gui_running"))
    set nowrap 
    set guioptions+=b
    colo torte
    set guioptions-=T
else
    set wrap
"    colo ron
endif

runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()


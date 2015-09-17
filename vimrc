" pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()
set nocompatible" 不兼容模式 set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1 "亂碼問題


" set hls"高亮
syntax on"關鍵字高亮
set encoding=utf-8
filetype plugin indent on
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set number 
set sm "括號配對情況
set selection=inclusive
set wildmenu
set laststatus=2
set vb "turn off visual bell
syntax on

set cursorline
set cursorcolumn

set shell=zsh\ -l

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
    set background=dark
    colo solarized
    "colo torte
    set guioptions-=T
    set guioptions-=m
    "set guifont=Anonymous\ Pro:h14
    "set guifont=Monoid:h14
    set guifont=Source\ Code\ Pro\ Light:h14
else
    set wrap
    set background=dark
    colorscheme solarized
    "colo ron
    "colo torte
endif

"set guifont=Anonymous\ Pro:h13:cANSI


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
let g:airline#extensions#syntastic#enabled = 1

" jslint.vim
let g:JSLintHighlightErrorLine = 1

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers=['jscs', 'jsxhint']
let g:syntastic_javascript_jscs_args = "--esprima=esprima-fb --esnext"
let g:syntastic_javascript_jsxhint_args = "--esprima=esprima-fb --esnext"

" vim-indent-guides  <Leader>ig
let g:indent_guides_auto_colors = 1
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

" vim-easymotion <Leader><Leader>w

" vim-expand-region +/-

" ctrlp.vim <c-p>
let g:ctrlp_custom_ignore = '\v[\/]node_modules$'

" ack.vim :Ack
let g:ackprg = 'ag --nogroup --nocolor --column' " use ag instead of ack, https://github.com/ggreer/the_silver_searcher

" VimShell :VimShell

" neocomplete
let g:neocomplete#enable_at_startup = 1

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" neosnippet
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

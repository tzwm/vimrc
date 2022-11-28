" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin(stdpath('data') . '/plugged')


Plug 'tzwm/vim-beancount'
"let g:beancount_account_completion = "chunks"
" to see something more: ./ftplugin/beancount.vim

Plug 'scrooloose/nerdtree'
map <F3> :NERDTreeToggle<CR>

Plug 'scrooloose/nerdcommenter'

Plug 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline#extensions#syntastic#enabled = 1

"Plug 'nathanaelkane/vim-indent-guides'
"let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_auto_colors = 1


Plug 'easymotion/vim-easymotion'
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
"nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1


Plug 'terryma/vim-expand-region' " +/-

Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

Plug 'mileszs/ack.vim'
if executable('ag')
  "let g:ackprg = 'ag --vimgrep'
  let g:ackprg = 'ag --nogroup --nocolor --column --ignore-case' " use ag instead of ack, https://github.com/ggreer/the_silver_searcher
endif

Plug 'tpope/vim-endwise'
Plug 'dag/vim-fish'
"Plug 'altercation/vim-colors-solarized'
Plug 'lifepillar/vim-solarized8'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'

"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Use deoplete.
"let g:deoplete#enable_at_startup = 1


Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
let g:UltiSnipsSnippetDirectories=["UltiSnips", "my_snippets"]

" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

Plug 'elixir-editors/vim-elixir'
Plug 'slashmili/alchemist.vim'

Plug 'vim-ruby/vim-ruby'

Plug 'habamax/vim-godot'
" :CocConfig
"{
  ""languageserver": {
    ""godot": {
      ""host": "127.0.0.1",
      ""filetypes": ["gdscript"],
      ""port": 6008
      "}
    "}
"}

Plug 'neoclide/coc.nvim', {'branch': 'release'}
" :CocInstall coc-elixir
" gem install solargraph
" :CocInstall coc-solargraph
" :CocInstall coc-rust-analyzer

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
"autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif


Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" :TSInstall ruby
" :TSInstall elixir

Plug 'rust-lang/rust.vim'

" Initialize plugin system
call plug#end()


syntax on "关键字高亮
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
filetype plugin indent on
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set number
set sm "括号匹配
set selection=inclusive
set wildmenu
set laststatus=2
set vb "turn off visual bell
set updatetime=300

" NFA engine(2) is 30 times slower than old engine tested by tzwm using 5k lines C code with syntax and ctags
set regexpengine=1

set cursorline
" set cursorcolumn

set nowrap
set background=dark
set termguicolors
"autocmd vimenter * ++nested colorscheme solarized8
colorscheme solarized8


"set guifont=Anonymous\ Pro\ Regular:h16
set guifont=IBM\ Plex\ Mono\ Regular:h16
"set guifont=Source\ Code\ Pro\ Regular:h18

" 删除行尾空格
autocmd BufWritePre * %s/\s\+$//e

" 插入当前日期
noremap cd i<C-R>=strftime('%F')<CR>

" auto format elixir files
noremap mf :!mix format --check-equivalent %
" autocmd BufWritePost *.exs,*.ex silent :!mix format --check-equivalent %

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin(stdpath('data') . '/plugged')


Plug 'tzwm/vim-beancount'
if getcwd() =~# 'beancount'
  set secure exrc
endif

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

Plug 'nathanaelkane/vim-indent-guides'
"let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 1


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

Plug 'mileszs/ack.vim'
if executable('ag')
  "let g:ackprg = 'ag --vimgrep'
  let g:ackprg = 'ag --nogroup --nocolor --column' " use ag instead of ack, https://github.com/ggreer/the_silver_searcher
endif

Plug 'tpope/vim-endwise'
Plug 'dag/vim-fish'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Use deoplete.
let g:deoplete#enable_at_startup = 1


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

" Initialize plugin system
call plug#end()


syntax on "关键字高亮
set encoding=utf-8
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

" NFA engine(2) is 30 times slower than old engine tested by tzwm using 5k lines C code with syntax and ctags
set regexpengine=1

set cursorline
" set cursorcolumn

set nowrap
set background=dark
colorscheme solarized

" 删除行尾空格
autocmd BufWritePre * %s/\s\+$//e

" 插入当前日期
noremap cd i<C-R>=strftime('%F')<CR>

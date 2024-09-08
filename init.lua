vim.g.have_nerd_font = false

vim.opt.number = true
vim.opt.encoding = 'utf-8'



require("config.lazy")

local Plug = vim.fn['plug#']

vim.call('plug#begin')


Plug('easymotion/vim-easymotion')
vim.cmd([[

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
]])


Plug('terryma/vim-expand-region')


Plug('tpope/vim-endwise')
Plug('dag/vim-fish')
Plug('lifepillar/vim-solarized8')
Plug('tpope/vim-fugitive')
Plug('mhinz/vim-signify')



Plug('vim-ruby/vim-ruby')

Plug('habamax/vim-godot')

Plug('neoclide/coc.nvim', { ['branch'] = 'release' } )
Plug('leafOfTree/vim-svelte-plugin')
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })

Plug('HerringtonDarkholme/yats.vim')

Plug('sbdchd/neoformat')



vim.call('plug#end')


vim.cmd([[
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
set updatetime=400

" NFA engine(2) is 30 times slower than old engine tested by tzwm using 5k lines C code with syntax and ctags set regexpengine=1

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

set wildignore+=*/node_modules/*

" 删除行尾空格
autocmd BufWritePre * %s/\s\+$//e

" remove ugly red comments in JSON
autocmd FileType json syntax match Comment +\/\/.\+$+

" 插入当前日期
noremap cd i<C-R>=strftime('%F')<CR>

" auto format elixir files
noremap mf :!mix format --check-equivalent %


]])


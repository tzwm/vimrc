vim.g.have_nerd_font = false

vim.opt.number = true
vim.opt.encoding = 'utf-8'
vim.opt.fileencodings = 'ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1'

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.opt.inccommand = 'split'

vim.opt.cursorline = true

vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.selection = 'inclusive'
vim.opt.wildmenu = true
vim.opt.laststatus = 2
vim.opt.vb = true
vim.opt.updatetime = 250
vim.opt.termguicolors = true
vim.opt.guifont = 'IBM Plex Mono Regular:h18'

vim.wo.wrap = false

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*',
  command = '%s/\\s\\+$//e',
})

require("config.lazy")

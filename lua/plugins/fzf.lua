return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    winopts = { width=0.94, height=0.94 },
  },
  keys = {
    { '<C-P>', '<cmd>FzfLua files<CR>' },
    { '<C-L>', '<cmd>FzfLua live_grep<CR>' },
    { '<C-k>', '<cmd>FzfLua commands<CR>' },
  },
}

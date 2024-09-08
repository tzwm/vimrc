return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { '<C-P>', '<cmd>FzfLua files<CR>' },
    { '<C-L>', '<cmd>FzfLua live_grep<CR>' },
    { '<C-k>', '<cmd>FzfLua commands<CR>' },
  },
}

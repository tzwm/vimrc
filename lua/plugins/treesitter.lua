return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  main = 'nvim-treesitter.configs', -- Sets main module to use for opts
  ops = {
    ensure_installed = {
      "lua", "vim", "vimdoc", "query", "markdown", "bash",
      "ruby", "elixir", "python",
      "javascript", "html", "css", "typescript",
    },
    auto_install = true,
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },
  },
}

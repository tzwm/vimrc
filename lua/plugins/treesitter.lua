return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  main = 'nvim-treesitter.configs', -- Sets main module to use for opts
  ops = {
    ensure_installed = {
      "markdown", "vim", "vimdoc",
      "lua", "query", "bash",
      "ruby", "elixir", "python",
      "javascript", "html", "css", "typescript", "scss",
      "svelte",
    },
    auto_install = true,
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },
  },
}

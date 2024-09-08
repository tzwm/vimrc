return {
  'echasnovski/mini.comment',
  version = false,
  lazy = false,
  opts = {
    mappings = {
      -- Toggle comment (like `gcip` - comment inner paragraph) for both
      -- Normal and Visual modes
      comment = '<leader>cc',

      -- Toggle comment on visual selection
      comment_visual = '<leader>cc',

      -- Toggle comment on current line
      comment_line = '<leader>cc',

      -- Define 'comment' textobject (like `dgc` - delete whole comment block)
      -- Works also in Visual mode if mapping differs from `comment_visual`
      textobject = '<leader>cc',
    }
  },
}

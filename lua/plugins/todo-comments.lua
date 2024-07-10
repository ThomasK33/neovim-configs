return {
  "folke/todo-comments.nvim",
  opts = {
    highlight = {
      -- vimgrep regex, supporting the pattern TODO(name):
      pattern = [[.*<((KEYWORDS)%(\(.{-1,}\))?):]],
    },
    search = {
      -- ripgrep regex, supporting the pattern TODO(name):
      pattern = [[\b(KEYWORDS)(\(\w*\))*:]],
    },
  },
}

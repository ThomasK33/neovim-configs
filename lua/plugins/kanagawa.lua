return {
  {
    "rebelot/kanagawa.nvim",
    -- lazy = true,
    name = "kanagawa",
    lazy = false,
    priority = 1000,
    opts = {
      theme = "wave",
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}

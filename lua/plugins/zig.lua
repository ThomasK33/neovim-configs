-- Disabling this because nvim-snippets has a bug with zig snippets.
-- See:
-- - https://github.com/LazyVim/LazyVim/issues/4746
-- - https://github.com/rafamadriz/friendly-snippets/pull/504
return {
  {
    "garymjr/nvim-snippets",
    opts = { ignored_filetypes = { "zig" } },
  },
}

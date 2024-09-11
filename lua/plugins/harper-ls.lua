if true then
  return {}
end

return {
  {
    "williamboman/mason.nvim",
    optional = true,
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "harper-ls" })
      end
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ["harper_ls"] = {
          filetypes = {
            "markdown",
            "rust",
            "typescript",
            "typescriptreact",
            "javascript",
            "python",
            "go",
            "c",
            "cpp",
            "ruby",
            "swift",
            "csharp",
            "toml",
            "lua",
            "gitcommit",
            "java",
            "html",
            "zig",
          },
        },
      },
    },
  },
}

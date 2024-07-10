return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = true },
    servers = {
      lua_ls = {
        settings = {
          Lua = {
            hint = {
              enable = true,
            },
          },
        },
      },
      gopls = {
        settings = {
          gopls = {
            gofumpt = true,
            hints = {
              assignVariableTypes = false,
              compositeLiteralFields = true,
              constantValues = true,
              parameterNames = true,
            },
          },
        },
      },
      tsp_server = {},
    },
  },
}
